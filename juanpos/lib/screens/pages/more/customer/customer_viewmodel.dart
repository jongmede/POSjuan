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

class CustomerViewModel extends FutureViewModel {
  final log = getLogger('CategoryViewModel');
  final navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();

  final UserCreationService? _userCreationService =
  locator<UserCreationService>();

  List<Customer>? get customers => _userCreationService!.customerList;

  @override
  Future futureToRun() {
    return _userCreationService!.syncCustomerUserAccount(
        user: _userService.currentUser);
  }

  Future? navigateToCreateCustomer() => navigationService.navigateTo(Routes.createCustomerView);

  Future? navigateToUpdateCustomer(Customer customer) => navigationService.navigateTo(Routes.updateCustomerView, arguments: UpdateCustomerViewArguments(customer: customer));

}
