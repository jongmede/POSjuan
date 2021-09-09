// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

import '../api/firestore_api.dart';
import '../api/firestore_storage_api.dart';
import '../services/business_service.dart';
import '../services/category_service.dart';
import '../services/image_picker_service.dart';
import '../services/items_service.dart';
import '../services/upload_service.dart';
import '../services/user_creation_service.dart';
import '../services/user_service.dart';
import '../services/variant_service.dart';

final locator = StackedLocator.instance;

void setupLocator({String? environment, EnvironmentFilter? environmentFilter}) {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => UserService());
  locator.registerLazySingleton(() => FirestoreApi());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => UserCreationService());
  locator.registerLazySingleton(() => CategoryService());
  locator.registerLazySingleton(() => BusinessService());
  locator.registerLazySingleton(() => ItemService());
  locator.registerLazySingleton(() => ItemVariantService());
  locator.registerLazySingleton(() => ImagePickerService());
  locator.registerSingleton(FirebaseAuthenticationService());
  locator.registerSingleton(FirestoreStorageApi());
  locator.registerSingleton(UploadService());
}
