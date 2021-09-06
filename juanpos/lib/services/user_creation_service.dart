import 'package:juanpos/api/firestore_api.dart';
import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/model/application_models.dart';

class UserCreationService {
  final log = getLogger('UserCreationService');

  final _firestoreApi = locator<FirestoreApi>();

  List<Customer> _customerList = [];
  List<Supplier> _supplierList = [];

  List<Customer> get customerList => _customerList;
  List<Supplier> get supplierList => _supplierList;

  Future<bool> createCustomerUserAccount({required Customer customer, required UserDetails user}) async {
    log.i('customer:$user');
    final result = await _firestoreApi.createCustomer(customer: customer, user: user);
    if(result != null) {
      _customerList = result;
      return true;
    }
    return false;
  }

  Future<bool> updateCustomerUserAccount({required Customer customer, required UserDetails user}) async {
    log.i('customer:$user');
    final result = await _firestoreApi.updateCustomer(customer: customer, user: user);

    if(result != null) {
      _customerList = result;
      return true;
    }
    return false;
  }

  Future<bool> deleteCustomerUserAccount({required Customer customer, required UserDetails user}) async {
    log.i('customer:$user');
    final result = await _firestoreApi.deleteCustomer(customer: customer, user: user);

    if(result != null) {
      _customerList = result;
      return true;
    }
    return false;
  }

  Future<List<Customer>?> syncCustomerUserAccount({required UserDetails user}) async {
    log.i('customer:$user');
    final result = await _firestoreApi.syncCustomer(user: user);

    return result;
  }

  Future<bool> createSupplierUserAccount({required Supplier supplier, required UserDetails user}) async {
    log.i('supplier:$user');
    final result = await _firestoreApi.createSupplier(supplier: supplier, user: user);
    if(result != null) {
      _supplierList = result;
      return true;
    }
    return false;
  }

  Future<bool> updateSupplierUserAccount({required Supplier supplier, required UserDetails user}) async {
    log.i('supplier:$user');
    final result = await _firestoreApi.updateSupplier(supplier: supplier, user: user);

    if(result != null) {
      _supplierList = result;
      return true;
    }
    return false;
  }

  Future<bool> deleteSupplierUserAccount({required Supplier supplier, required UserDetails user}) async {
    log.i('supplier:$user');
    final result = await _firestoreApi.deleteSupplier(supplier: supplier, user: user);

    if(result != null) {
      _supplierList = result;
      return true;
    }
    return false;
  }

  Future<List<Supplier>?> syncSupplierUserAccount({required UserDetails user}) async {
    log.i('Supplier:$user');
    final result = await _firestoreApi.syncSupplier(user: user);

    return result;
  }
}