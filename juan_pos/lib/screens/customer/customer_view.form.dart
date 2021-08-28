// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String FirstNameValueKey = 'firstName';
const String LastNameValueKey = 'lastName';
const String MobileValueKey = 'mobile';
const String AddressValueKey = 'address';

mixin $CustomerView on StatelessWidget {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final FocusNode firstNameFocusNode = FocusNode();
  final FocusNode lastNameFocusNode = FocusNode();
  final FocusNode mobileFocusNode = FocusNode();
  final FocusNode addressFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    firstNameController.addListener(() => _updateFormData(model));
    lastNameController.addListener(() => _updateFormData(model));
    mobileController.addListener(() => _updateFormData(model));
    addressController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(

        model.formValueMap
          ..addAll({
            FirstNameValueKey: firstNameController.text,
            LastNameValueKey: lastNameController.text,
            MobileValueKey: mobileController.text,
            AddressValueKey: addressController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    firstNameController.dispose();
    lastNameController.dispose();
    mobileController.dispose();
    addressController.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get firstNameValue => this.formValueMap[FirstNameValueKey];
  String? get lastNameValue => this.formValueMap[LastNameValueKey];
  String? get mobileValue => this.formValueMap[MobileValueKey];
  String? get addressValue => this.formValueMap[AddressValueKey];

  bool get hasFirstName => this.formValueMap.containsKey(FirstNameValueKey);
  bool get hasLastName => this.formValueMap.containsKey(LastNameValueKey);
  bool get hasMobile => this.formValueMap.containsKey(MobileValueKey);
  bool get hasAddress => this.formValueMap.containsKey(AddressValueKey);
}

extension Methods on FormViewModel {}
