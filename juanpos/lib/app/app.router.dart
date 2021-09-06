// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../model/application_models.dart';
import '../screens/business/business_view.dart';
import '../screens/business/create_business/create_business_view.dart';
import '../screens/create_account/with_email/create_account_view.dart';
import '../screens/home/home_view.dart';
import '../screens/login/with_email/login_view.dart';
import '../screens/pages/more/customer/create_customer/create_customer_view.dart';
import '../screens/pages/more/customer/customer_view.dart';
import '../screens/pages/more/customer/update_customer/update_customer_view.dart';
import '../screens/pages/more/inventory_management/category/create_category/create_category_view.dart';
import '../screens/pages/more/inventory_management/im_view.dart';
import '../screens/pages/more/inventory_management/item/create_item/create_item_view.dart';
import '../screens/pages/more/inventory_management/item/variant/create_variant/create_variant_view.dart';
import '../screens/pages/more/supplier/create_supplier/create_supplier_view.dart';
import '../screens/pages/more/supplier/supplier_view.dart';
import '../screens/pages/more/supplier/update_supplier/update_supplier_view.dart';
import '../screens/startup/startup_view.dart';

class Routes {
  static const String startUpView = '/';
  static const String loginView = '/login-view';
  static const String createAccountView = '/create-account-view';
  static const String homeView = '/home-view';
  static const String iMView = '/i-mView';
  static const String customerView = '/customer-view';
  static const String createCustomerView = '/create-customer-view';
  static const String updateCustomerView = '/update-customer-view';
  static const String supplierView = '/supplier-view';
  static const String createSupplierView = '/create-supplier-view';
  static const String updateSupplierView = '/update-supplier-view';
  static const String businessView = '/business-view';
  static const String createBusinessView = '/create-business-view';
  static const String createItemView = '/create-item-view';
  static const String createItemVariantView = '/create-item-variant-view';
  static const String createCategoryView = '/create-category-view';
  static const all = <String>{
    startUpView,
    loginView,
    createAccountView,
    homeView,
    iMView,
    customerView,
    createCustomerView,
    updateCustomerView,
    supplierView,
    createSupplierView,
    updateSupplierView,
    businessView,
    createBusinessView,
    createItemView,
    createItemVariantView,
    createCategoryView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startUpView, page: StartUpView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.createAccountView, page: CreateAccountView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.iMView, page: IMView),
    RouteDef(Routes.customerView, page: CustomerView),
    RouteDef(Routes.createCustomerView, page: CreateCustomerView),
    RouteDef(Routes.updateCustomerView, page: UpdateCustomerView),
    RouteDef(Routes.supplierView, page: SupplierView),
    RouteDef(Routes.createSupplierView, page: CreateSupplierView),
    RouteDef(Routes.updateSupplierView, page: UpdateSupplierView),
    RouteDef(Routes.businessView, page: BusinessView),
    RouteDef(Routes.createBusinessView, page: CreateBusinessView),
    RouteDef(Routes.createItemView, page: CreateItemView),
    RouteDef(Routes.createItemVariantView, page: CreateItemVariantView),
    RouteDef(Routes.createCategoryView, page: CreateCategoryView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartUpView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartUpView(),
        settings: data,
      );
    },
    LoginView: (data) {
      var args = data.getArgs<LoginViewArguments>(
        orElse: () => LoginViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => LoginView(key: args.key),
        settings: data,
      );
    },
    CreateAccountView: (data) {
      var args = data.getArgs<CreateAccountViewArguments>(
        orElse: () => CreateAccountViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CreateAccountView(key: args.key),
        settings: data,
      );
    },
    HomeView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    IMView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const IMView(),
        settings: data,
      );
    },
    CustomerView: (data) {
      var args = data.getArgs<CustomerViewArguments>(
        orElse: () => CustomerViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => CustomerView(key: args.key),
        settings: data,
      );
    },
    CreateCustomerView: (data) {
      var args = data.getArgs<CreateCustomerViewArguments>(
        orElse: () => CreateCustomerViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => CreateCustomerView(key: args.key),
        settings: data,
      );
    },
    UpdateCustomerView: (data) {
      var args = data.getArgs<UpdateCustomerViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => UpdateCustomerView(
          key: args.key,
          customer: args.customer,
        ),
        settings: data,
      );
    },
    SupplierView: (data) {
      var args = data.getArgs<SupplierViewArguments>(
        orElse: () => SupplierViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => SupplierView(key: args.key),
        settings: data,
      );
    },
    CreateSupplierView: (data) {
      var args = data.getArgs<CreateSupplierViewArguments>(
        orElse: () => CreateSupplierViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => CreateSupplierView(key: args.key),
        settings: data,
      );
    },
    UpdateSupplierView: (data) {
      var args = data.getArgs<UpdateSupplierViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => UpdateSupplierView(
          key: args.key,
          supplier: args.supplier,
        ),
        settings: data,
      );
    },
    BusinessView: (data) {
      var args = data.getArgs<BusinessViewArguments>(
        orElse: () => BusinessViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => BusinessView(key: args.key),
        settings: data,
      );
    },
    CreateBusinessView: (data) {
      var args = data.getArgs<CreateBusinessViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => CreateBusinessView(
          key: args.key,
          business: args.business,
          isInitial: args.isInitial,
        ),
        settings: data,
      );
    },
    CreateItemView: (data) {
      var args = data.getArgs<CreateItemViewArguments>(
        orElse: () => CreateItemViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => CreateItemView(
          key: args.key,
          item: args.item,
        ),
        settings: data,
      );
    },
    CreateItemVariantView: (data) {
      var args = data.getArgs<CreateItemVariantViewArguments>(
        orElse: () => CreateItemVariantViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => CreateItemVariantView(
          key: args.key,
          variant: args.variant,
        ),
        settings: data,
      );
    },
    CreateCategoryView: (data) {
      var args = data.getArgs<CreateCategoryViewArguments>(
        orElse: () => CreateCategoryViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => CreateCategoryView(key: args.key),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// LoginView arguments holder class
class LoginViewArguments {
  final Key? key;
  LoginViewArguments({this.key});
}

/// CreateAccountView arguments holder class
class CreateAccountViewArguments {
  final Key? key;
  CreateAccountViewArguments({this.key});
}

/// CustomerView arguments holder class
class CustomerViewArguments {
  final Key? key;
  CustomerViewArguments({this.key});
}

/// CreateCustomerView arguments holder class
class CreateCustomerViewArguments {
  final Key? key;
  CreateCustomerViewArguments({this.key});
}

/// UpdateCustomerView arguments holder class
class UpdateCustomerViewArguments {
  final Key? key;
  final Customer customer;
  UpdateCustomerViewArguments({this.key, required this.customer});
}

/// SupplierView arguments holder class
class SupplierViewArguments {
  final Key? key;
  SupplierViewArguments({this.key});
}

/// CreateSupplierView arguments holder class
class CreateSupplierViewArguments {
  final Key? key;
  CreateSupplierViewArguments({this.key});
}

/// UpdateSupplierView arguments holder class
class UpdateSupplierViewArguments {
  final Key? key;
  final Supplier supplier;
  UpdateSupplierViewArguments({this.key, required this.supplier});
}

/// BusinessView arguments holder class
class BusinessViewArguments {
  final Key? key;
  BusinessViewArguments({this.key});
}

/// CreateBusinessView arguments holder class
class CreateBusinessViewArguments {
  final Key? key;
  final Business? business;
  final bool isInitial;
  CreateBusinessViewArguments(
      {this.key, this.business, required this.isInitial});
}

/// CreateItemView arguments holder class
class CreateItemViewArguments {
  final Key? key;
  final Item? item;
  CreateItemViewArguments({this.key, this.item});
}

/// CreateItemVariantView arguments holder class
class CreateItemVariantViewArguments {
  final Key? key;
  final ItemVariant? variant;
  CreateItemVariantViewArguments({this.key, this.variant});
}

/// CreateCategoryView arguments holder class
class CreateCategoryViewArguments {
  final Key? key;
  CreateCategoryViewArguments({this.key});
}
