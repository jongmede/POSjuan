import 'package:juanpos/api/firestore_api.dart';
import 'package:juanpos/screens/business/business_view.dart';
import 'package:juanpos/screens/business/create_business/create_business_view.dart';
import 'package:juanpos/screens/create_account/with_email/create_account_view.dart';
import 'package:juanpos/screens/home/home_view.dart';
import 'package:juanpos/screens/login/with_email/login_view.dart';
import 'package:juanpos/screens/pages/more/customer/create_customer/create_customer_view.dart';
import 'package:juanpos/screens/pages/more/customer/customer_view.dart';
import 'package:juanpos/screens/pages/more/customer/update_customer/update_customer_view.dart';
import 'package:juanpos/screens/pages/more/inventory_management/category/create_category/create_category_view.dart';
import 'package:juanpos/screens/pages/more/inventory_management/im_view.dart';
import 'package:juanpos/screens/pages/more/inventory_management/item/create_item/create_item_view.dart';
import 'package:juanpos/screens/pages/more/inventory_management/item/variant/create_variant/create_variant_view.dart';
import 'package:juanpos/screens/pages/more/supplier/create_supplier/create_supplier_view.dart';
import 'package:juanpos/screens/pages/more/supplier/supplier_view.dart';
import 'package:juanpos/screens/pages/more/supplier/update_supplier/update_supplier_view.dart';
import 'package:juanpos/screens/startup/startup_view.dart';
import 'package:juanpos/services/business_service.dart';
import 'package:juanpos/services/category_service.dart';
import 'package:juanpos/services/items_service.dart';
import 'package:juanpos/services/user_creation_service.dart';
import 'package:juanpos/services/user_service.dart';
import 'package:juanpos/services/variant_service.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartUpView, initial: true),
    CupertinoRoute(page: LoginView),
    CupertinoRoute(page: CreateAccountView),
    CupertinoRoute(page: HomeView),
    MaterialRoute(page: IMView),
    MaterialRoute(page: CustomerView),
    MaterialRoute(page: CreateCustomerView),
    MaterialRoute(page: UpdateCustomerView),
    MaterialRoute(page: SupplierView),
    MaterialRoute(page: CreateSupplierView),
    MaterialRoute(page: UpdateSupplierView),
    MaterialRoute(page: BusinessView),
    MaterialRoute(page: CreateBusinessView),
    MaterialRoute(page: CreateItemView),
    MaterialRoute(page: CreateItemVariantView),
    MaterialRoute(page: CreateCategoryView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: UserService),
    LazySingleton(classType: FirestoreApi),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: UserCreationService),
    LazySingleton(classType: CategoryService),
    LazySingleton(classType: BusinessService),
    LazySingleton(classType: ItemService),
    LazySingleton(classType: ItemVariantService),
    Singleton(classType: FirebaseAuthenticationService),
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
