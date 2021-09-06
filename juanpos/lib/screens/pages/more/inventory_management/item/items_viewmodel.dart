import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/app/app.router.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/services/category_service.dart';
import 'package:juanpos/services/items_service.dart';
import 'package:juanpos/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ItemsViewModel extends FutureViewModel {
  final log = getLogger('ItemsViewModel');
  final navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();
  final _itemsService = locator<ItemService>();

  List<Item>? get items => _itemsService.items;

  @override
  Future futureToRun() {
    return _itemsService.syncItem(
        user: _userService.currentUser);
  }

  Future? navigateToCreateItem() => navigationService.navigateTo(Routes.createItemView, arguments: CreateItemViewArguments(item: null));

  Future? navigateToUpdateItem(Item item) => navigationService.navigateTo(Routes.createItemView, arguments: CreateItemViewArguments(item: item));

}
