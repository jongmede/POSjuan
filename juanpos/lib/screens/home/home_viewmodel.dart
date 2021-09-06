import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/app/app.router.dart';
import 'package:juanpos/screens/pages/more/more_view.dart';
import 'package:juanpos/services/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final log = getLogger('HomeViewModel');

  final navigationService = locator<NavigationService>();
  final FirebaseAuthenticationService? _firebaseAuthenticationService =
  locator<FirebaseAuthenticationService>();

  int _selectedItem = 0;
  List<Widget> _pages = [
    Container(child: Center(child: Text("Page 1 Not Yet implemented"),),),
    Container(child: Center(child: Text("Page 2 Not Yet implemented"),),),
    Container(child: Center(child: Text("Page 3 Not Yet implemented"),),),
    Container(child: Center(child: Text("Page 4 Not Yet implemented"),),),
    MoreView()
  ];

  int get selectedItem => _selectedItem;
  List<Widget> get pages => _pages;

  void changeSelectedItem(int id) {
    _selectedItem = id;
    notifyListeners();
  }

  void navigateToCreateCustomer() =>
      navigationService.navigateTo(Routes.createCustomerView);

  void navigateToCreateSupplier() =>
      navigationService.navigateTo(Routes.createSupplierView);

  void navigateToBusinessList() => navigationService.navigateTo(Routes.businessView);



  Future logOut() async{
    log.d("logging out");
    navigationService.popRepeated(1);
    await runBusyFuture(_firebaseAuthenticationService!.logout(), throwException: true);
    navigationService.replaceWith(Routes.loginView);
  }
}
