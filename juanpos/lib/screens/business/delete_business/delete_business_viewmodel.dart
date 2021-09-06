import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/exceptions/firestore_api_exception.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/services/business_service.dart';
import 'package:juanpos/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';


class DeleteBusinessViewModel extends FormViewModel
{
  final log = getLogger('CategoryViewModel');
  final navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();

  final BusinessService _businessService =
  locator<BusinessService>();

  final Business business;

  DeleteBusinessViewModel(this.business);

  Future<void> createOrUpdateCategory() async {
    final result = await _businessService.deleteBusiness(
        business:
        business,
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