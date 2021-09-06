import 'package:juanpos/screens/dumb_widgets/authentication_layout.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'login_phone_view.form.dart';
import 'login_phone_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'phone'),
  FormTextField(name: 'password'),
])
class LoginPhoneView extends StatelessWidget with $LoginPhoneView {
  LoginPhoneView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginPhoneViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
      builder: (context, model, child) => Scaffold(
          body: AuthenticationLayout(
        busy: model.isBusy,
        onMainButtonTapped: model.saveData,
        onCreateAccountTapped: model.navigateToCreateAccount,
        validationMessage: model.validationMessage,
        title: 'Welcome',
        subtitle: 'Enter your email address to sign in.',
        mainButtonTitle: 'SIGN IN',
        form: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Phone'),
              controller: phoneController,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password',),
              controller: passwordController,
            ),
          ],
        ),
        onForgotPassword: () {},
      )),
      viewModelBuilder: () => LoginPhoneViewModel(),
    );
  }
}
