import 'package:juan_pos/app/app.logger.dart';
import 'package:juan_pos/exceptions/firestore_api_exception.dart';
import 'package:juan_pos/model/application_models.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreApi {
  final log = getLogger('FirestoreApi');

  final CollectionReference usersCollection =
  FirebaseFirestore.instance.collection('users');

  final CollectionReference customerCollection =
  FirebaseFirestore.instance.collection('customers');

  final CollectionReference supplierCollection =
  FirebaseFirestore.instance.collection('suppliers');

  Future<void> createUser({required User user}) async {
    log.i('user:$user');

    try {
      final userDocument = usersCollection.doc(user.id);
      await userDocument.set(user.toJson());
      log.v('UserCreated at ${userDocument.path}');
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to create new user',
        devDetails: '$error',
      );
    }
  }

  Future<User?> getUser({required String userId}) async {
    log.i('userId:$userId');

    if (userId.isNotEmpty) {
      final userDoc = await usersCollection.doc(userId).get();
      if (!userDoc.exists) {
        log.v('We have no user with id $userId in our database');
        return null;
      }

      final userData = userDoc.data();
      log.v('User found. Data: $userData');

      return User.fromJson(userData as Map<String, dynamic>);
    } else {
      throw FirestoreApiException(
          message:
          'Your userId passed in is empty. Please pass in a valid user if from your Firebase user.');
    }
  }

  Future<bool> createCustomer({required Customer user}) async {
    log.i('customer:$user');

    try {
      final userDocument = await customerCollection.doc(user.mobile).get();
      log.d(userDocument);
      if (userDocument.exists) {
        log.v('We have customer with id ${user.mobile} in our database');
        return false;
      }
      await customerCollection.doc(user.mobile).set(user.toJson());
      log.v('UserCreated at ${customerCollection.path}');
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to create new customer',
        devDetails: '$error',
      );
    }
    return true;
  }

  Future<bool> createSupplier({required Supplier user}) async {
    log.i('customer:$user');

    try {
      final userDocument = await supplierCollection.doc(user.mobile).get();
      if (userDocument.exists) {
        log.v('We have supplier with id ${user.mobile} in our database');
        return false;
      }
      await supplierCollection.doc(user.mobile).set(user.toJson());
      log.v('UserCreated at ${supplierCollection.path}');
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to create new supplier',
        devDetails: '$error',
      );
    }
    return true;
  }
}