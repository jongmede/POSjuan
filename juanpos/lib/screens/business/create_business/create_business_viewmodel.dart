import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/app/app.router.dart';
import 'package:juanpos/exceptions/firestore_api_exception.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/services/business_service.dart';
import 'package:juanpos/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'create_business_view.form.dart';

class CreateBusinessViewModel extends FormViewModel {
  final log = getLogger('SupplierViewModel');
  final navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();
  final _businessService = locator<BusinessService>();

  Business? business;

  bool policyCheck = false;
  bool initialSetup;

  CreateBusinessViewModel(this.business, this.initialSetup);

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }

  void updatePolicy(bool check) {
    policyCheck = check;
    notifyListeners();
  }

  Future<void> createBusiness() async {
    final result = await _businessService.createBusiness(
        business: Business(
            id: "",
            businessName: businessNameValue!,
            country: countryValue!,
            city: cityValue!,
            taxNO: taxNoValue!,
            pinCode: pinCodeValue!,
            mobile: mobileValue!,
            type: typeValue!),
        user: _userService.currentUser);
    validateResult(result);
  }

  Future<void> updateBusiness() async {
    final result = await _businessService.updateBusiness(
        business: business!.copyWith(
            businessName: businessNameValue!,
            country: countryValue!,
            city: cityValue!,
            taxNO: taxNoValue!,
            pinCode: pinCodeValue!,
            mobile: mobileValue!,
            type: typeValue!),
        user: _userService.currentUser);
    validateResult(result);
  }

  Future saveData() async {
    log.i('valued:$formValueMap');
    if (!validateInputs()) {
      setValidationMessage("Fields can't be empty");
      return;
    }
    try {
      if (business != null) {
        await runBusyFuture(updateBusiness(), throwException: true);
      } else {
        await runBusyFuture(createBusiness(), throwException: true);
      }
    } on FirestoreApiException catch (e) {
      log.e(e.toString());
      setValidationMessage(e.toString());
    }
  }

  bool validateInputs() {
    bool temp = policyCheck;
    if (initialSetup && policyCheck) {
      temp = true;
    } else if (!initialSetup) {
      temp = true;
    }
    return mobileValue != null &&
        mobileValue!.isNotEmpty &&
        businessNameValue != null &&
        businessNameValue!.isNotEmpty &&
        countryValue != null &&
        countryValue!.isNotEmpty &&
        cityValue != null &&
        cityValue!.isNotEmpty &&
        taxNoValue != null &&
        taxNoValue!.isNotEmpty &&
        pinCodeValue != null &&
        pinCodeValue!.isNotEmpty &&
        typeValue != null &&
        typeValue!.isNotEmpty &&
        temp;
  }

  void validateResult(bool result) {
    if (!result) {
      setValidationMessage("Supplier already exists");
    } else {
      if (initialSetup) {
        navigationService.replaceWith(Routes.homeView);
      } else {
        navigationService.popRepeated(1);
      }
    }
  }
}
