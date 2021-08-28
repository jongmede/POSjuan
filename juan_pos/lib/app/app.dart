import 'package:juan_pos/api/firestore_api.dart';
import 'package:juan_pos/screens/create_account/create_account_view.dart';
import 'package:juan_pos/screens/customer/customer_view.dart';
import 'package:juan_pos/screens/home/home_view.dart';
import 'package:juan_pos/screens/login/login_view.dart';
import 'package:juan_pos/screens/startup/startup_view.dart';
import 'package:juan_pos/screens/supplier/supplier_view.dart';
import 'package:juan_pos/services/user_creation_service.dart';
import 'package:juan_pos/services/user_service.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartUpView, initial: true),
    CupertinoRoute(page: LoginView),
    CupertinoRoute(page: CreateAccountView),
    CupertinoRoute(page: HomeView),
    MaterialRoute(page: CustomerView),
    MaterialRoute(page: SupplierView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: UserService),
    LazySingleton(classType: FirestoreApi),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: UserCreationService),
    Singleton(classType: FirebaseAuthenticationService),
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
