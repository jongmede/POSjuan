import 'package:juanpos/api/firestore_api.dart';
import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/model/application_models.dart';

class ItemVariantService {
  final log = getLogger('ItemVariantService');

  final _firestoreApi = locator<FirestoreApi>();

  Item? currentItem;

  List<ItemVariant>? _variants = [];

  List<ItemVariant>? get variants => _variants;

  Future<bool> createItemVariant(
      {required ItemVariant variant, required UserDetails user, Item? item}) async {
    log.i('customer:$user');
    final result =
    await _firestoreApi.createItemVariant(variant: variant, user: user, item : item);
    if (result == null)
      return false;
    else {
      log.i("item:$item");
      currentItem = item;
      _variants = result;
      return true;
    }
  }

  Future<bool> updateItemVariant(
      {required ItemVariant newValue, required UserDetails user}) async {
    log.i('customer:$user');
    final result =
    await _firestoreApi.updateItemVariant(variant: newValue, user: user);
    if (result == null)
      return false;
    else {
      _variants = result;
      return true;
    }
  }

  Future<bool> deleteItemVariant(
      {required ItemVariant variant, required UserDetails user}) async {
    log.i('customer:$user');
    final result =
    await _firestoreApi.deleteItemVariant(variant: variant, user: user,);
    if (result == null)
      return false;
    else {
      _variants = result;
      return true;
    }
  }

  Future<List<ItemVariant>?> syncItemVariant({required UserDetails user, required Item item}) async {
    log.i('customer:$user');
    return _variants = await _firestoreApi.syncItemVariant(user: user, item : item);
  }
}
