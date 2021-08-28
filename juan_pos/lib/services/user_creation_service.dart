import 'package:juan_pos/api/firestore_api.dart';
import 'package:juan_pos/app/app.locator.dart';
import 'package:juan_pos/app/app.logger.dart';
import 'package:juan_pos/model/application_models.dart';

class UserCreationService {
  final log = getLogger('UserCreationService');

  final _firestoreApi = locator<FirestoreApi>();

  Future<bool> createCustomerUserAccount({required Customer user}) async {
    log.i('customer:$user');
    return await _firestoreApi.createCustomer(user: user);
  }

  Future<bool> createSupplierUserAccount({required Supplier user}) async {
    log.i('customer:$user');
    return await _firestoreApi.createSupplier(user: user);
  }
}