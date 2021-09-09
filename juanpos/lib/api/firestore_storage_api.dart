import 'dart:io';

import 'package:juanpos/exceptions/firestore_api_exception.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirestoreStorageApi {
  FirebaseStorage storage = FirebaseStorage.instance;

  Future<String> uploadProductImage(
      {required String fileName,
      required File file,
      required UserDetails user,
      required ItemVariant variant}) async {
    try {
      final ref = storage.ref(
          user.id + "/" + variant.prodID + "/" + variant.id + "/" + fileName);
      await ref.putFile(file);
      return ref.getDownloadURL();
    } catch (e) {
      throw FirestoreApiException(
        devDetails: "$e",
        message: "Unable to upload file $fileName",
      );
    }
  }
}
