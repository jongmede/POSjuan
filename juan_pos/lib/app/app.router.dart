// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../screens/create_account/create_account_view.dart';
import '../screens/customer/customer_view.dart';
import '../screens/home/home_view.dart';
import '../screens/login/login_view.dart';
import '../screens/startup/startup_view.dart';
import '../screens/supplier/supplier_view.dart';

class Routes {
  static const String startUpView = '/';
  static const String loginView = '/login-view';
  static const String createAccountView = '/create-account-view';
  static const String homeView = '/home-view';
  static const String customerView = '/customer-view';
  static const String supplierView = '/supplier-view';
  static const all = <String>{
    startUpView,
    loginView,
    createAccountView,
    homeView,
    customerView,
    supplierView,
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
    RouteDef(Routes.customerView, page: CustomerView),
    RouteDef(Routes.supplierView, page: SupplierView),
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
    CustomerView: (data) {
      var args = data.getArgs<CustomerViewArguments>(
        orElse: () => CustomerViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => CustomerView(key: args.key),
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

/// SupplierView arguments holder class
class SupplierViewArguments {
  final Key? key;
  SupplierViewArguments({this.key});
}
