import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/exceptions/firestore_api_exception.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreApi {
  final log = getLogger('FirestoreApi');

  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('users');

  Future<void> createUser({required UserDetails user}) async {
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

  Future<UserDetails?> getUser({required String userId}) async {
    log.i('userId:$userId');

    if (userId.isNotEmpty) {
      final userDoc = await usersCollection.doc(userId).get();
      if (!userDoc.exists) {
        log.v('We have no user with id $userId in our database');
        return null;
      }

      final userData = userDoc.data();
      log.v('User found. Data: $userData');

      return UserDetails.fromJson(userData as Map<String, dynamic>);
    } else {
      throw FirestoreApiException(
          message:
              'Your userId passed in is empty. Please pass in a valid user if from your Firebase user.');
    }
  }

  Future<List<Customer>?> syncCustomer({required UserDetails user}) async {
    try {
      final userDB = usersCollection.doc(user.id).collection("customers");

      final customerDocuments = await userDB.get();

      log.v(
          'We have supplier with id ${customerDocuments.docs.map((e) => e.data()).toList()} in our database');

      return customerDocuments.docs
          .map((e) => Customer.fromJson(e.data()))
          .toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to customer list',
        devDetails: '$error',
      );
    }
  }

  Future<List<Customer>?> createCustomer(
      {required Customer customer, required UserDetails user}) async {
    log.i('customer:$customer');

    try {
      final userDB = usersCollection.doc(user.id).collection("customers");
      final userDocument =
          await userDB.where('mobile', isEqualTo: customer.mobile).get();

      if (userDocument.size > 0) {
        log.v('We have customer with id ${customer.mobile} in our database');
        return null;
      }

      final customerDoc = userDB.doc();
      await customerDoc.set(customer.copyWith(id: customerDoc.id).toJson());

      log.v('customer:$customer created at ${userDB.path}');

      final customerDocuments = await userDB.get();
      return customerDocuments.docs
          .map((e) => Customer.fromJson(e.data()))
          .toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to create new customer',
        devDetails: '$error',
      );
    }
  }

  Future<List<Customer>?> deleteCustomer(
      {required Customer customer, required UserDetails user}) async {
    log.i('customer:$customer');

    try {
      final userDB = usersCollection.doc(user.id).collection("customers");

      await userDB.doc(customer.id).delete();

      log.v('customer:$customer deleted at ${userDB.path}');

      final customerDocuments = await userDB.get();
      return customerDocuments.docs
          .map((e) => Customer.fromJson(e.data()))
          .toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to delete customer',
        devDetails: '$error',
      );
    }
  }

  Future<List<Customer>?> updateCustomer(
      {required Customer customer, required UserDetails user}) async {
    log.i('customer:$customer');

    try {
      final userDB = usersCollection.doc(user.id).collection("customers");

      await userDB.doc(customer.id).update(customer.toJson());

      log.v('customer:$customer updated at ${userDB.path}');

      final customerDocuments = await userDB.get();
      return customerDocuments.docs
          .map((e) => Customer.fromJson(e.data()))
          .toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to update customer',
        devDetails: '$error',
      );
    }
  }

  Future<List<Supplier>?> syncSupplier({required UserDetails user}) async {
    try {
      final userDB = usersCollection.doc(user.id).collection("suppliers");

      final customerDocuments = await userDB.get();

      log.v(
          'We have supplier with id ${customerDocuments.docs.map((e) => e.data()).toList()} in our database');

      return customerDocuments.docs
          .map((e) => Supplier.fromJson(e.data()))
          .toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to customer list',
        devDetails: '$error',
      );
    }
  }

  Future<List<Supplier>?> createSupplier(
      {required Supplier supplier, required UserDetails user}) async {
    log.i('supplier:$supplier');

    try {
      final userDB = usersCollection.doc(user.id).collection("suppliers");
      final userDocument =
          await userDB.where('mobile', isEqualTo: supplier.mobile).get();

      if (userDocument.size > 0) {
        log.v('We have supplier with id ${supplier.mobile} in our database');
        return null;
      }
      final supplierDoc = userDB.doc();
      await supplierDoc.set(supplier.copyWith(id: supplierDoc.id).toJson());

      log.v('supplier:$supplier created at ${userDB.path}');

      final customerDocuments = await userDB.get();
      return customerDocuments.docs
          .map((e) => Supplier.fromJson(e.data()))
          .toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to create new supplier',
        devDetails: '$error',
      );
    }
  }

  Future<List<Supplier>?> deleteSupplier(
      {required Supplier supplier, required UserDetails user}) async {
    log.i('supplier:$supplier');

    try {
      final userDB = usersCollection.doc(user.id).collection("suppliers");

      await userDB.doc(supplier.id).delete();

      log.v('supplier:$supplier deleted at ${userDB.path}');

      final customerDocuments = await userDB.get();
      return customerDocuments.docs
          .map((e) => Supplier.fromJson(e.data()))
          .toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to delete supplier',
        devDetails: '$error',
      );
    }
  }

  Future<List<Supplier>?> updateSupplier(
      {required Supplier supplier, required UserDetails user}) async {
    log.i('supplier:$supplier');

    try {
      final userDB = usersCollection.doc(user.id).collection("suppliers");

      await userDB.doc(supplier.id).update(supplier.toJson());

      log.v('supplier:$supplier updated at ${userDB.path}');

      final customerDocuments = await userDB.get();
      return customerDocuments.docs
          .map((e) => Supplier.fromJson(e.data()))
          .toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to update supplier',
        devDetails: '$error',
      );
    }
  }

  Future<List<Category>?> createCategory(
      {required Category category, required UserDetails user}) async {
    log.i('customer:$user');

    try {
      final userDB = usersCollection.doc(user.id).collection("categories");
      final categoryDoc = userDB.doc();

      await userDB
          .doc(categoryDoc.id)
          .set(category.copyWith(id: categoryDoc.id).toJson());

      final categoryDocuments = await userDB.get();
      return categoryDocuments.docs
          .map((e) => Category.fromJson(e.data()))
          .toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to create new supplier',
        devDetails: '$error',
      );
    }
  }

  Future<List<Category>?> updateCategory(
      {required Category newValue,
      required Category oldValue,
      required UserDetails user}) async {
    log.i('customer:$user');

    try {
      final userDB = usersCollection.doc(user.id).collection("categories");
      await userDB.doc(oldValue.id).update(newValue.toJson());

      final categoryDocuments = await userDB.get();
      return categoryDocuments.docs
          .map((e) => Category.fromJson(e.data()))
          .toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to create new supplier',
        devDetails: '$error',
      );
    }
  }

  Future<List<Category>?> deleteCategory(
      {required Category category, required UserDetails user}) async {
    log.i('category:$category customer:$user');

    try {
      final userDB = usersCollection.doc(user.id).collection("categories");
      await userDB.doc(category.id).delete();
      final categoryDocuments = await userDB.get();
      return categoryDocuments.docs
          .map((e) => Category.fromJson(e.data()))
          .toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to create new supplier',
        devDetails: '$error',
      );
    }
  }

  Future<List<Category>?> syncCategory({required UserDetails user}) async {
    log.i('customer:$user');

    try {
      final userDB = usersCollection.doc(user.id).collection("categories");
      final userDocument = await userDB.get();

      log.v(
          'We have supplier with id ${userDocument.docs.map((e) => e.data()).toList()} in our database');

      return userDocument.docs.map((e) => Category.fromJson(e.data())).toList();
      // log.v('UserCreated at ${supplierCollection.path}');
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to create new supplier',
        devDetails: '$error',
      );
    }
  }

  Future<List<Business>?> syncBusiness({required UserDetails user}) async {
    try {
      final userDB = usersCollection.doc(user.id).collection("businesses");

      final businessDocuments = await userDB.get();

      log.v(
          'We have business with id ${businessDocuments.docs.map((e) => e.data()).toList()} in our database');

      return businessDocuments.docs
          .map((e) => Business.fromJson(e.data()))
          .toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to business list',
        devDetails: '$error',
      );
    }
  }

  Future<List<Business>?> createBusiness(
      {required Business business, required UserDetails user}) async {
    log.i('business:$business');

    try {
      final userDB = usersCollection.doc(user.id).collection("businesses");
      final userDocument =
          await userDB.where('mobile', isEqualTo: business.mobile).get();

      if (userDocument.size > 0) {
        log.v('We have business with id ${business.mobile} in our database');
        return null;
      }
      final businessDoc = userDB.doc();
      await businessDoc.set(business.copyWith(id: businessDoc.id).toJson());

      log.v('business:$business created at ${userDB.path}');

      final businessDocuments = await userDB.get();
      return businessDocuments.docs
          .map((e) => Business.fromJson(e.data()))
          .toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to create new business',
        devDetails: '$error',
      );
    }
  }

  Future<List<Business>?> deleteBusiness(
      {required Business business, required UserDetails user}) async {
    log.i('business:$business');

    try {
      final userDB = usersCollection.doc(user.id).collection("businesses");

      await userDB.doc(business.id).delete();

      log.v('business:$business deleted at ${userDB.path}');

      final businessDocuments = await userDB.get();
      return businessDocuments.docs
          .map((e) => Business.fromJson(e.data()))
          .toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to delete business',
        devDetails: '$error',
      );
    }
  }

  Future<List<Business>?> updateBusiness(
      {required Business business, required UserDetails user}) async {
    log.i('business:$business');

    try {
      final userDB = usersCollection.doc(user.id).collection("businesses");

      await userDB.doc(business.id).update(business.toJson());

      log.v('business:$business updated at ${userDB.path}');

      final businessDocuments = await userDB.get();
      return businessDocuments.docs
          .map((e) => Business.fromJson(e.data()))
          .toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to update business',
        devDetails: '$error',
      );
    }
  }

  Future<List<Item>?> syncItem({required UserDetails user}) async {
    try {
      final userDB = usersCollection.doc(user.id).collection("items");

      final itemDocuments = await userDB.get();

      log.v(
          'We have item with id ${itemDocuments.docs.map((e) => e.data()).toList()} in our database');

      return itemDocuments.docs.map((e) => Item.fromJson(e.data())).toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to business list',
        devDetails: '$error',
      );
    }
  }

  Future<List<Item>?> createItem(
      {required Item item,
      required List<ItemVariant> variants,
      required UserDetails user}) async {
    log.i('item:$item');

    try {
      final userDB = usersCollection.doc(user.id).collection("items");
      final userDocument =
          await userDB.where('productCode', isEqualTo: item.productCode).get();

      if (userDocument.size > 0) {
        log.v('We have item with id ${item.productCode} in our database');
        return null;
      }

      final itemDoc = userDB.doc();
      await itemDoc.set(item.copyWith(id: itemDoc.id).toJson());

      for(var variant in variants){
        final variantDoc = itemDoc.collection("variants").doc();
        await variantDoc.set(variant.copyWith(id: variantDoc.id, itemId: itemDoc.id).toJson());
      }

      log.v('item:$item created at ${userDB.path}');

      final itemDocuments = await userDB.get();
      return itemDocuments.docs.map((e) => Item.fromJson(e.data())).toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to create new item',
        devDetails: '$error',
      );
    }
  }

  Future<List<Item>?> deleteItem(
      {required Item item, required UserDetails user}) async {
    log.i('item:$item');

    try {
      final userDB = usersCollection.doc(user.id).collection("items");

      await userDB.doc(item.id).delete();

      log.v('item:$item deleted at ${userDB.path}');

      final itemDocuments = await userDB.get();
      return itemDocuments.docs.map((e) => Item.fromJson(e.data())).toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to delete item',
        devDetails: '$error',
      );
    }
  }

  Future<List<Item>?> updateItem(
      {required Item item, required UserDetails user}) async {
    log.i('item:$item');

    try {
      final userDB = usersCollection.doc(user.id).collection("items");

      await userDB.doc(item.id).update(item.toJson());

      final itemDocuments = await userDB.get();
      return itemDocuments.docs.map((e) => Item.fromJson(e.data())).toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to update item',
        devDetails: '$error',
      );
    }
  }

  Future<List<ItemVariant>?> syncItemVariant(
      {required UserDetails user, required Item item}) async {
    try {
      final userDB = usersCollection
          .doc(user.id)
          .collection("items")
          .doc(item.id)
          .collection("variants");

      final variantDocuments = await userDB.get();

      log.v(
          'We have variant with id ${variantDocuments.docs.map((e) => e.data()).toList()} in our database');

      return variantDocuments.docs
          .map((e) => ItemVariant.fromJson(e.data()))
          .toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to business list',
        devDetails: '$error',
      );
    }
  }

  Future<List<ItemVariant>?> createItemVariant(
      {required ItemVariant variant,
      required UserDetails user,
      Item? item}) async {
    log.i('variant:$variant');

    try {
      if (item == null || item.id.isEmpty) {
        final itemsDoc = usersCollection.doc(user.id).collection("items").doc();

        item = Item(id: itemsDoc.id);

        await itemsDoc.set(item.toJson());
      }
      final userDB = usersCollection
          .doc(user.id)
          .collection("items")
          .doc(item.id)
          .collection("variants");
      final userDocument = await userDB
          .where('productVariantCode', isEqualTo: variant.productVariantCode)
          .get();

      if (userDocument.size > 0) {
        log.v(
            'We have item with id ${variant.productVariantCode} in our database');
        return null;
      }
      final variantDoc = userDB.doc();
      await variantDoc.set(variant.copyWith(id: variantDoc.id).toJson());

      log.v('variant:$variant created at ${userDB.path}');

      final variantDocuments = await userDB.get();
      return variantDocuments.docs
          .map((e) => ItemVariant.fromJson(e.data()))
          .toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to create new item',
        devDetails: '$error',
      );
    }
  }

  Future<List<ItemVariant>?> deleteItemVariant(
      {required ItemVariant variant,
      required UserDetails user}) async {
    log.i('variant:$variant');

    try {
      final userDB = usersCollection
          .doc(user.id)
          .collection("items")
          .doc(variant.itemId)
          .collection("variants");

      await userDB.doc(variant.id).delete();

      log.v('variant:$variant deleted at ${userDB.path}');

      final variantDocuments = await userDB.get();
      return variantDocuments.docs
          .map((e) => ItemVariant.fromJson(e.data()))
          .toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to delete variant',
        devDetails: '$error',
      );
    }
  }

  Future<List<ItemVariant>?> updateItemVariant(
      {required ItemVariant variant,
      required UserDetails user,}) async {
    log.i('variant:$variant');

    try {
      final userDB = usersCollection
          .doc(user.id)
          .collection("items")
          .doc(variant.itemId)
          .collection("variants");

      await userDB.doc(variant.id).update(variant.toJson());

      log.v('variant:$variant updated at ${userDB.path}');

      final variantDocuments = await userDB.get();
      return variantDocuments.docs
          .map((e) => ItemVariant.fromJson(e.data()))
          .toList();
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to update variant',
        devDetails: '$error',
      );
    }
  }
}
