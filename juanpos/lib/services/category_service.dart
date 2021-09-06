import 'package:juanpos/api/firestore_api.dart';
import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/model/application_models.dart';

class CategoryService {
  final log = getLogger('UserCreationService');

  final _firestoreApi = locator<FirestoreApi>();

  List<Category>? _categories = [];

  List<Category>? get categories => _categories;

  Future<bool> createCategory(
      {required Category category, required UserDetails user}) async {
    log.i('customer:$user');
    final result =
        await _firestoreApi.createCategory(category: category, user: user);
    if (result == null)
      return false;
    else {
      _categories = result;
      return true;
    }
  }

  Future<bool> updateCategory(
      {required Category newValue, required Category oldValue, required UserDetails user}) async {
    log.i('customer:$user');
    final result =
        await _firestoreApi.updateCategory(newValue: newValue, oldValue: oldValue, user: user);
    if (result == null)
      return false;
    else {
      _categories = result;
      return true;
    }
  }

  Future<bool> deleteCategory(
      {required Category category, required UserDetails user}) async {
    log.i('customer:$user');
    final result =
    await _firestoreApi.deleteCategory(category: category, user: user);
    if (result == null)
      return false;
    else {
      _categories = result;
      return true;
    }
  }

  Future<List<Category>?> syncCategory({required UserDetails user}) async {
    log.i('customer:$user');
    _categories = await _firestoreApi.syncCategory(user: user);
  }
}
