// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String CompanyNameValueKey = 'companyName';
const String MobileValueKey = 'mobile';
const String ContactNameValueKey = 'contactName';
const String AddressValueKey = 'address';

mixin $SupplierView on StatelessWidget {
  final TextEditingController companyNameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController contactNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final FocusNode companyNameFocusNode = FocusNode();
  final FocusNode mobileFocusNode = FocusNode();
  final FocusNode contactNameFocusNode = FocusNode();
  final FocusNode addressFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    companyNameController.addListener(() => _updateFormData(model));
    mobileController.addListener(() => _updateFormData(model));
    contactNameController.addListener(() => _updateFormData(model));
    addressController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            CompanyNameValueKey: companyNameController.text,
            MobileValueKey: mobileController.text,
            ContactNameValueKey: contactNameController.text,
            AddressValueKey: addressController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    companyNameController.dispose();
    mobileController.dispose();
    contactNameController.dispose();
    addressController.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get companyNameValue => this.formValueMap[CompanyNameValueKey];
  String? get mobileValue => this.formValueMap[MobileValueKey];
  String? get contactNameValue => this.formValueMap[ContactNameValueKey];
  String? get addressValue => this.formValueMap[AddressValueKey];

  bool get hasCompanyName => this.formValueMap.containsKey(CompanyNameValueKey);
  bool get hasMobile => this.formValueMap.containsKey(MobileValueKey);
  bool get hasContactName => this.formValueMap.containsKey(ContactNameValueKey);
  bool get hasAddress => this.formValueMap.containsKey(AddressValueKey);
}

extension Methods on FormViewModel {}
