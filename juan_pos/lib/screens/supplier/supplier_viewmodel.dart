import 'package:juan_pos/exceptions/firestore_api_exception.dart';
import 'package:juan_pos/screens/supplier/supplier_view.form.dart';
import 'package:juan_pos/app/app.locator.dart';
import 'package:juan_pos/app/app.logger.dart';
import 'package:juan_pos/model/application_models.dart';
import 'package:juan_pos/services/user_creation_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SupplierViewModel extends FormViewModel {
  final log = getLogger('SupplierViewModel');
  final navigationService = locator<NavigationService>();
  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }

  final UserCreationService? _userCreationService =
      locator<UserCreationService>();

  Future<void> runAuthentication() async {
    final result = await _userCreationService!.createSupplierUserAccount(
        user: Supplier(
            mobile: mobileValue!,
            companyName: companyNameValue!,
            contactName: contactNameValue!,
            address: addressValue!));
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
        addressValue!.isNotEmpty;
  }

  void validateResult(bool result) {
    if (!result) {
      setValidationMessage("Supplier already exists");
    } else {
      navigationService.popRepeated(1);
    }
  }
}
