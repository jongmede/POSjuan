import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/exceptions/firestore_api_exception.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/services/category_service.dart';
import 'package:juanpos/services/user_creation_service.dart';
import 'package:juanpos/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';


class DeleteCustomerViewModel extends FormViewModel
{
  final log = getLogger('CategoryViewModel');
  final navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();

  final UserCreationService _userCreationService =
  locator<UserCreationService>();

  final Customer customer;

  DeleteCustomerViewModel(this.customer);

  Future<void> createOrUpdateCategory() async {
    final result = await _userCreationService.deleteCustomerUserAccount(
        customer:
        customer,
        user: _userService.currentUser);
    validateResult(result);
  }

  Future saveData() async {

    try {
      await runBusyFuture(createOrUpdateCategory(), throwException: true);
    } on FirestoreApiException catch (e) {
      log.e(e.toString());
      setValidationMessage(e.toString());
    }
  }

  void validateResult(bool result) {
    if (!result) {
      setValidationMessage("Entry does not exists");
    } else {
      navigationService.popRepeated(1);
    }
  }

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }
}