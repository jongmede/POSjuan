import 'package:juanpos/screens/dumb_widgets/authentication_layout.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'create_account_email_view.form.dart';
import 'create_account_email_viewmodel.dart';


@FormView(fields: [
  FormTextField(name: 'firstName'),
  FormTextField(name: 'secondName'),
  FormTextField(name: 'phone'),
  FormTextField(name: 'password'),
  FormTextField(name: 'code'),
])
class CreateAccountPhoneView extends StatelessWidget with $CreateAccountPhoneView {
  CreateAccountPhoneView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateAccountPhoneViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
      builder: (context, model, child) => Scaffold(
          body: AuthenticationLayout(
        busy: model.isBusy,
        onMainButtonTapped: model.saveData,
        onBackPressed: model.navigateBack,
        validationMessage: model.validationMessage,
        title: 'Create Account',
        subtitle: 'Enter your name, email and password for sign up.',
        mainButtonTitle: 'SIGN UP',
        form: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'First Name'),
              controller: firstNameController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Last Name'),
              controller: secondNameController,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
              controller: passwordController,
            ),
            Row(children: [
              Expanded(
                flex: 4,
                child: TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Phone'),
                controller: phoneController,
              ),),
              Expanded(
                flex: 1,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Code'),
                  controller: codeController,
                ),),
            ],)
          ],
        ),
        showTermsText: true,
      )),
      viewModelBuilder: () => CreateAccountPhoneViewModel(),
    );
  }
}
