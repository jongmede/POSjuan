import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/app/app.router.dart';
import 'package:juanpos/exceptions/firestore_api_exception.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/services/items_service.dart';
import 'package:juanpos/services/variant_service.dart';
import 'package:juanpos/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ItemsViewModel extends FutureViewModel {
  final log = getLogger('ItemsViewModel');
  final navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();
  final _itemsService = locator<ItemService>();
  List<ItemVariant> variants = [];
  final _itemVariantService = locator<ItemVariantService>();
  List<Item>? get items => _itemsService.items;

  @override
  Future futureToRun() {
    return _itemsService.syncItem(
        user: _userService.currentUser);
  }
 Future<void> syncVariant(item) async {
    if (item != null) {
      try {
        final result = await runBusyFuture(
            _itemVariantService.syncItemVariant(
                user: _userService.currentUser, item: item!),
            throwException: true);
        if (result != null) {
          variants = result;
          notifyListeners();
        }
      } on FirestoreApiException catch (e) {
        log.e(e.toString());
        
      }
    }
  }
  Future? navigateToCreateItem() => navigationService.navigateTo(Routes.createItemView, arguments: CreateItemViewArguments(item: null));

  Future? navigateToUpdateItem(Item item) => navigationService.navigateTo(Routes.createItemView, arguments: CreateItemViewArguments(item: item));

}
