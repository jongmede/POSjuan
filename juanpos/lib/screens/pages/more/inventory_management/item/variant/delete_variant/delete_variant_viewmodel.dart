import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/exceptions/firestore_api_exception.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/services/user_service.dart';
import 'package:juanpos/services/variant_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';


class DeleteVariantViewModel extends FormViewModel
{
  final log = getLogger('CategoryViewModel');
  final navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();

  final ItemVariantService _itemVariantService =
  locator<ItemVariantService>();

  final ItemVariant variant;
  DeleteVariantViewModel(this.variant);

  Future<void> createOrUpdateItemVariant() async {
    if(variant.id.isEmpty){
      validateResult(true);
      return;
    }
    final result = await _itemVariantService.deleteItemVariant(
        variant:
        variant,
        user: _userService.currentUser);
    validateResult(result);
  }

  Future saveData() async {
    try {
      await runBusyFuture(createOrUpdateItemVariant(), throwException: true);
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