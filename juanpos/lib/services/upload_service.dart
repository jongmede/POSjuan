import 'dart:io';


import 'package:juanpos/api/firestore_storage_api.dart';
import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/model/application_models.dart';

class UploadService {

  final log = getLogger('UploadService');

  final _firestorageApi = locator<FirestoreStorageApi>();

  Future<String> uploadProductImage({required String fileName, required File file, required UserDetails user, required ItemVariant variant}) async {
    return await _firestorageApi.uploadProductImage(fileName: fileName, file: file, user: user, variant: variant);
  }
}