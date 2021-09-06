import 'package:juanpos/api/firestore_api.dart';
import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/model/application_models.dart';

class ItemService {
  final log = getLogger('ItemService');

  final _firestoreApi = locator<FirestoreApi>();

  Item? currentItem;

  List<Item>? _items = [];

  List<Item>? get items => _items;

  Future<bool> createItem(
      {required Item item,required List<ItemVariant> variants,  required UserDetails user,}) async {
    log.i('customer:$user');
    final result =
    await _firestoreApi.createItem(item: item,variants: variants, user: user);
    if (result == null)
      return false;
    else {
      _items = result;
      return true;
    }
  }

  Future<bool> updateItem(
      {required Item newValue, required UserDetails user}) async {
    log.i('customer:$user');
    final result =
    await _firestoreApi.updateItem(item: newValue, user: user);
    if (result == null)
      return false;
    else {
      _items = result;
      return true;
    }
  }

  Future<bool> deleteItem(
      {required Item item, required UserDetails user}) async {
    log.i('customer:$user');
    final result =
    await _firestoreApi.deleteItem(item: item, user: user);
    if (result == null)
      return false;
    else {
      _items = result;
      return true;
    }
  }

  Future<List<Item>?> syncItem({required UserDetails user}) async {
    log.i('customer:$user');
    _items = await _firestoreApi.syncItem(user: user);
  }
}
