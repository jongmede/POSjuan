import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/exceptions/firestore_api_exception.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/services/items_service.dart';
import 'package:juanpos/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';


class DeleteItemViewModel extends FormViewModel
{
  final log = getLogger('CategoryViewModel');
  final navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();

  final ItemService _itemService =
  locator<ItemService>();

  final Item item;

  DeleteItemViewModel(this.item);

  Future<void> deleteItem() async {
    final result = await _itemService.deleteItem(
        item:
        item,
        user: _userService.currentUser);
    validateResult(result);
  }

  Future saveData() async {
    try {
      await runBusyFuture(deleteItem(), throwException: true);
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