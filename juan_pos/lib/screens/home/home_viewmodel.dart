import 'package:juan_pos/app/app.locator.dart';
import 'package:juan_pos/app/app.logger.dart';
import 'package:juan_pos/app/app.router.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final log = getLogger('HomeViewModel');

  final navigationService = locator<NavigationService>();

  int _selectedItem = 2;
  List<Widget> _pages = [
    Container(child: Center(child: Text("Page 1 Not Yet implemented"),),),
    Container(child: Center(child: Text("Page 2 Not Yet implemented"),),),
    Container(child: Center(child: Text("Page 3 Not Yet implemented"),),),
    Container(child: Center(child: Text("Page 4 Not Yet implemented"),),),
    Container(child: Center(child: Text("Page 5 Not Yet implemented"),),),
  ];

  int get selectedItem => _selectedItem;
  List<Widget> get pages => _pages;

  void changeSelectedItem(int id) {
    _selectedItem = id;
    notifyListeners();
  }

  void navigateToCreateCustomer() =>
      navigationService.navigateTo(Routes.customerView);

  void navigateToCreateSupplier() =>
      navigationService.navigateTo(Routes.supplierView);
}
