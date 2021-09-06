import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.router.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/screens/base/authentication_viewmodel.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';

import 'create_account_email_view.form.dart';

class CreateAccountPhoneViewModel extends AuthenticationViewModel {
  final _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  CreateAccountPhoneViewModel() : super(successRoute: Routes.homeView);



  void navigateBack() => navigationService.back();

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
