import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.router.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/screens/base/authentication_viewmodel.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';

import 'login_view.form.dart';

class LoginViewModel extends AuthenticationViewModel {
  final FirebaseAuthenticationService? _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  LoginViewModel() : super(successRoute: Routes.homeView);

  @override
  Future<FirebaseAuthenticationResult> runAuthentication() =>
      _firebaseAuthenticationService!.loginWithEmail(
        email: emailValue!,
        password: passwordValue!,
      );

  void navigateToCreateAccount() =>
      navigationService.navigateTo(Routes.createAccountView);

  @override
  UserDetails getUserDetails() {
    // TODO: implement getUserDetails
    throw UnimplementedError();
  }
}
