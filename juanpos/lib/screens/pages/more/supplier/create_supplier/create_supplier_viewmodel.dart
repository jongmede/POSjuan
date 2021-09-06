import 'package:juanpos/exceptions/firestore_api_exception.dart';
import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/services/user_creation_service.dart';
import 'package:juanpos/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'create_supplier_view.form.dart';

class CreateSupplierViewModel extends FormViewModel {
  final log = getLogger('SupplierViewModel');
  final navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }

  final UserCreationService? _userCreationService =
      locator<UserCreationService>();

  Future<void> runAuthentication() async {
    final result = await _userCreationService!.createSupplierUserAccount(
        supplier: Supplier(
          id: "",
            mobile: mobileValue!,
            companyName: companyNameValue!,
            contactName: contactNameValue!,
            address: addressValue!, email: emailValue!, website: websiteValue!), user: _userService.currentUser);
    validateResult(result);
  }

  Future saveData() async {
    log.i('valued:$formValueMap');
    if (!validateInputs()) {
      setValidationMessage("Fields can't be empty");
      return;
    }
    try {
      await runBusyFuture(runAuthentication(), throwException: true);
    } on FirestoreApiException catch (e) {
      log.e(e.toString());
      setValidationMessage(e.toString());
    }
  }

  bool validateInputs() {
    return mobileValue != null &&
        mobileValue!.isNotEmpty &&
        contactNameValue != null &&
        companyNameValue!.isNotEmpty &&
        contactNameValue != null &&
        contactNameValue!.isNotEmpty &&
        addressValue != null &&
        addressValue!.isNotEmpty && emailValue != null &&
        emailValue!.isNotEmpty && websiteValue != null &&
        websiteValue!.isNotEmpty;
  }

  void validateResult(bool result) {
    if (!result) {
      setValidationMessage("Supplier already exists");
    } else {
      navigationService.popRepeated(1);
    }
  }
}
