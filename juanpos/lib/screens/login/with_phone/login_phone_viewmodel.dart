import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.router.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/screens/base/authentication_viewmodel.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';

import 'login_phone_view.form.dart';

class LoginPhoneViewModel extends AuthenticationViewModel {
  final FirebaseAuthenticationService? _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  LoginPhoneViewModel() : super(successRoute: Routes.homeView);

  void navigateToCreateAccount() =>
      navigationService.navigateTo(Routes.createAccountView);

  @override
  Future<FirebaseAuthenticationResult> runAuthentication() {
    // TODO: implement runAuthentication
    throw UnimplementedError();
  }

  @override
  UserDetails getUserDetails() {
    // TODO: implement getUserDetails
    throw UnimplementedError();
  }
}
