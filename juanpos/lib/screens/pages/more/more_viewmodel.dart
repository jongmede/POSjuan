import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MoreItem {
  final String? image;
  final String title;
  final String? successRoute;

  MoreItem(
    this.title, {
    this.image,
    this.successRoute,
  });
}

class MoreViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  List<MoreItem> _items = [
    MoreItem("CUSTOMER", image: "asset/images/ALL CUSTOMER.png", successRoute: Routes.customerView),
    MoreItem("SUPPLIER", image: "asset/images/SUPPLIER.png", successRoute: Routes.supplierView),
    MoreItem("INVENTORY MANAGEMENT",
        successRoute: Routes.iMView),
    MoreItem("STOCK VALUE COST PRICE"),
    MoreItem("STOCK VALUE SALES PRICE"),
    MoreItem("PURCHASE", image: "asset/images/PURCHASE.png"),
    MoreItem("PAYMENT INVOICE", image: "asset/images/PAYMENT.png"),
    MoreItem("ADJUSTMENT", image: "asset/images/ADJUST.png")
  ];

  List<MoreItem> get items => _items;

  void navigateToItem(String? successRoute) {
    if (successRoute != null) {
      _navigationService.navigateTo(successRoute);
    }
  }
}
