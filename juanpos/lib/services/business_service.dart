import 'package:juanpos/api/firestore_api.dart';
import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/model/application_models.dart';

class BusinessService {
  final log = getLogger('UserCreationService');

  final _firestoreApi = locator<FirestoreApi>();

  List<Business>? _businesses = [];

  List<Business>? get businesses => _businesses;

  Future<bool> createBusiness(
      {required Business business, required UserDetails user}) async {
    log.i('customer:$user');
    final result =
    await _firestoreApi.createBusiness(business: business, user: user);
    if (result == null)
      return false;
    else {
      _businesses = result;
      return true;
    }
  }

  Future<bool> updateBusiness(
      {required Business business, required UserDetails user}) async {
    log.i('customer:$user');
    final result =
    await _firestoreApi.updateBusiness(business: business, user: user);
    if (result == null)
      return false;
    else {
      _businesses = result;
      return true;
    }
  }

  Future<bool> deleteBusiness(
      {required Business business, required UserDetails user}) async {
    log.i('customer:$user');
    final result =
    await _firestoreApi.deleteBusiness(business: business, user: user);
    if (result == null)
      return false;
    else {
      _businesses = result;
      return true;
    }
  }

  Future<List<Business>?> syncBusiness({required UserDetails user}) async {
    log.i('customer:$user');
    _businesses = await _firestoreApi.syncBusiness(user: user);
  }
}