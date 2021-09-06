import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/exceptions/firestore_api_exception.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/services/user_creation_service.dart';
import 'package:juanpos/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'update_customer_view.form.dart';

class UpdateCustomerViewModel extends FormViewModel {
  final log = getLogger('CustomerViewModel');
  final navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();

  final Customer customer;

  UpdateCustomerViewModel(this.customer);

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }

  final UserCreationService? _userCreationService =
      locator<UserCreationService>();

  Future<void> runAuthentication() async {
    Customer updatedCustomer = customer.copyWith(
        mobile: mobileValue!,
        firstName: firstNameValue!,
        lastName: lastNameValue!,
        address: addressValue!);
    if(updatedCustomer == customer) return;
    final result = await _userCreationService!.updateCustomerUserAccount(
        customer: updatedCustomer, user: _userService.currentUser);
    validateResult(result);
  }

  Future saveData() async {
    log.i('valued:$formValueMap');
    if (!validateInputs()) {
      print(" not any value empry");
      setValidationMessage("Fields can't be empty");
      notifyListeners();
      return;
    }
    log.i('valued:$formValueMap');
    try {
      await runBusyFuture(runAuthentication(), throwException: true);
    } on FirestoreApiException catch (e) {
      log.e(e.toString());
      setValidationMessage(e.toString());
    }
  }

  bool validateInputs() {
    return mobileValue != null && mobileValue!.isNotEmpty
        && firstNameValue != null && firstNameValue!.isNotEmpty
        && lastNameValue != null && lastNameValue!.isNotEmpty
        && addressValue != null && addressValue!.isNotEmpty;
  }

  void validateResult(bool result) {
    if (!result) {
      setValidationMessage("Customer already exists");
    } else {
      navigationService.popRepeated(1);
    }
  }
}
