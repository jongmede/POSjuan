// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String BusinessNameValueKey = 'businessName';
const String CountryValueKey = 'country';
const String CityValueKey = 'city';
const String TaxNoValueKey = 'taxNo';
const String PinCodeValueKey = 'pinCode';
const String MobileValueKey = 'mobile';
const String TypeValueKey = 'type';

mixin $CreateBusinessView on StatelessWidget {
  final TextEditingController businessNameController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController taxNoController = TextEditingController();
  final TextEditingController pinCodeController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController typeController = TextEditingController();
  final FocusNode businessNameFocusNode = FocusNode();
  final FocusNode countryFocusNode = FocusNode();
  final FocusNode cityFocusNode = FocusNode();
  final FocusNode taxNoFocusNode = FocusNode();
  final FocusNode pinCodeFocusNode = FocusNode();
  final FocusNode mobileFocusNode = FocusNode();
  final FocusNode typeFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    businessNameController.addListener(() => _updateFormData(model));
    countryController.addListener(() => _updateFormData(model));
    cityController.addListener(() => _updateFormData(model));
    taxNoController.addListener(() => _updateFormData(model));
    pinCodeController.addListener(() => _updateFormData(model));
    mobileController.addListener(() => _updateFormData(model));
    typeController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            BusinessNameValueKey: businessNameController.text,
            CountryValueKey: countryController.text,
            CityValueKey: cityController.text,
            TaxNoValueKey: taxNoController.text,
            PinCodeValueKey: pinCodeController.text,
            MobileValueKey: mobileController.text,
            TypeValueKey: typeController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    businessNameController.dispose();
    countryController.dispose();
    cityController.dispose();
    taxNoController.dispose();
    pinCodeController.dispose();
    mobileController.dispose();
    typeController.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get businessNameValue => this.formValueMap[BusinessNameValueKey];
  String? get countryValue => this.formValueMap[CountryValueKey];
  String? get cityValue => this.formValueMap[CityValueKey];
  String? get taxNoValue => this.formValueMap[TaxNoValueKey];
  String? get pinCodeValue => this.formValueMap[PinCodeValueKey];
  String? get mobileValue => this.formValueMap[MobileValueKey];
  String? get typeValue => this.formValueMap[TypeValueKey];

  bool get hasBusinessName =>
      this.formValueMap.containsKey(BusinessNameValueKey);
  bool get hasCountry => this.formValueMap.containsKey(CountryValueKey);
  bool get hasCity => this.formValueMap.containsKey(CityValueKey);
  bool get hasTaxNo => this.formValueMap.containsKey(TaxNoValueKey);
  bool get hasPinCode => this.formValueMap.containsKey(PinCodeValueKey);
  bool get hasMobile => this.formValueMap.containsKey(MobileValueKey);
  bool get hasType => this.formValueMap.containsKey(TypeValueKey);
}

extension Methods on FormViewModel {}
