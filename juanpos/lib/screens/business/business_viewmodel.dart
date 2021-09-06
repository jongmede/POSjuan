import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/app/app.router.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/services/business_service.dart';
import 'package:juanpos/services/user_creation_service.dart';
import 'package:juanpos/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class BusinessViewModel extends FutureViewModel {
  final log = getLogger('CategoryViewModel');
  final navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();

  final BusinessService? _businessService =
  locator<BusinessService>();

  List<Business>? get businesses => _businessService!.businesses;

  @override
  Future futureToRun() {
    return _businessService!.syncBusiness(
        user: _userService.currentUser);
  }

  Future? navigateToCreateBusiness() => navigationService.navigateTo(Routes.createBusinessView, arguments: CreateBusinessViewArguments(business: null, isInitial: false, ));

  Future? navigateToUpdateBusiness(Business business) => navigationService.navigateTo(Routes.createBusinessView, arguments: CreateBusinessViewArguments(business: business, isInitial: false));

}
