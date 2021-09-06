import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/app/app.router.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/services/category_service.dart';
import 'package:juanpos/services/user_creation_service.dart';
import 'package:juanpos/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SupplierViewModel extends FutureViewModel {
  final log = getLogger('CategoryViewModel');
  final navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();

  final UserCreationService? _userCreationService =
  locator<UserCreationService>();

  List<Supplier>? get suppliers => _userCreationService!.supplierList;

  @override
  Future futureToRun() {
    return _userCreationService!.syncSupplierUserAccount(
        user: _userService.currentUser);
  }

  Future? navigateToCreateSupplier() => navigationService.navigateTo(Routes.createSupplierView);

  Future? navigateToUpdateSupplier(Supplier supplier) => navigationService.navigateTo(Routes.updateSupplierView, arguments: UpdateSupplierViewArguments(supplier: supplier));

}
