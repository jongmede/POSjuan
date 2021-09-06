// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String FirstNameValueKey = 'firstName';
const String SecondNameValueKey = 'secondName';
const String PhoneValueKey = 'phone';
const String PasswordValueKey = 'password';
const String CodeValueKey = 'code';

mixin $CreateAccountPhoneView on StatelessWidget {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController secondNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController codeController = TextEditingController();
  final FocusNode firstNameFocusNode = FocusNode();
  final FocusNode secondNameFocusNode = FocusNode();
  final FocusNode phoneFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode codeFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    firstNameController.addListener(() => _updateFormData(model));
    secondNameController.addListener(() => _updateFormData(model));
    phoneController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
    codeController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            FirstNameValueKey: firstNameController.text,
            SecondNameValueKey: secondNameController.text,
            PhoneValueKey: phoneController.text,
            PasswordValueKey: passwordController.text,
            CodeValueKey: codeController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    firstNameController.dispose();
    secondNameController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    codeController.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get firstNameValue => this.formValueMap[FirstNameValueKey];
  String? get secondNameValue => this.formValueMap[SecondNameValueKey];
  String? get phoneValue => this.formValueMap[PhoneValueKey];
  String? get passwordValue => this.formValueMap[PasswordValueKey];
  String? get codeValue => this.formValueMap[CodeValueKey];

  bool get hasFirstName => this.formValueMap.containsKey(FirstNameValueKey);
  bool get hasSecondName => this.formValueMap.containsKey(SecondNameValueKey);
  bool get hasPhone => this.formValueMap.containsKey(PhoneValueKey);
  bool get hasPassword => this.formValueMap.containsKey(PasswordValueKey);
  bool get hasCode => this.formValueMap.containsKey(CodeValueKey);
}

extension Methods on FormViewModel {}
