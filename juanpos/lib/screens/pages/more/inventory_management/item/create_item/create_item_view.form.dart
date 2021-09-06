// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String ProductNameValueKey = 'productName';
const String ProductDescriptionValueKey = 'productDescription';
const String ProductCodeValueKey = 'productCode';
const String CategoryIdValueKey = 'categoryId';

mixin $CreateItemView on StatelessWidget {
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController productDescriptionController =
      TextEditingController();
  final TextEditingController productCodeController = TextEditingController();
  final TextEditingController categoryIdController = TextEditingController();
  final FocusNode productNameFocusNode = FocusNode();
  final FocusNode productDescriptionFocusNode = FocusNode();
  final FocusNode productCodeFocusNode = FocusNode();
  final FocusNode categoryIdFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    productNameController.addListener(() => _updateFormData(model));
    productDescriptionController.addListener(() => _updateFormData(model));
    productCodeController.addListener(() => _updateFormData(model));
    categoryIdController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            ProductNameValueKey: productNameController.text,
            ProductDescriptionValueKey: productDescriptionController.text,
            ProductCodeValueKey: productCodeController.text,
            CategoryIdValueKey: categoryIdController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    productNameController.dispose();
    productDescriptionController.dispose();
    productCodeController.dispose();
    categoryIdController.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get productNameValue => this.formValueMap[ProductNameValueKey];
  String? get productDescriptionValue =>
      this.formValueMap[ProductDescriptionValueKey];
  String? get productCodeValue => this.formValueMap[ProductCodeValueKey];
  String? get categoryIdValue => this.formValueMap[CategoryIdValueKey];

  bool get hasProductName => this.formValueMap.containsKey(ProductNameValueKey);
  bool get hasProductDescription =>
      this.formValueMap.containsKey(ProductDescriptionValueKey);
  bool get hasProductCode => this.formValueMap.containsKey(ProductCodeValueKey);
  bool get hasCategoryId => this.formValueMap.containsKey(CategoryIdValueKey);
}

extension Methods on FormViewModel {}
