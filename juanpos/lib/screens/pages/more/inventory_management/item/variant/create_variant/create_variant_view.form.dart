// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String ProductVariantNameValueKey = 'productVariantName';
const String ProductVariantPriceValueKey = 'productVariantPrice';
const String ProductVariantCostValueKey = 'productVariantCost';
const String ProductVariantDescriptionValueKey = 'productVariantDescription';
const String ProductVariantCodeValueKey = 'productVariantCode';

mixin $CreateItemVariantView on StatelessWidget {
  final TextEditingController productVariantNameController =
      TextEditingController();
  final TextEditingController productVariantPriceController =
      TextEditingController();
  final TextEditingController productVariantCostController =
      TextEditingController();
  final TextEditingController productVariantDescriptionController =
      TextEditingController();
  final TextEditingController productVariantCodeController =
      TextEditingController();
  final FocusNode productVariantNameFocusNode = FocusNode();
  final FocusNode productVariantPriceFocusNode = FocusNode();
  final FocusNode productVariantCostFocusNode = FocusNode();
  final FocusNode productVariantDescriptionFocusNode = FocusNode();
  final FocusNode productVariantCodeFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    productVariantNameController.addListener(() => _updateFormData(model));
    productVariantPriceController.addListener(() => _updateFormData(model));
    productVariantCostController.addListener(() => _updateFormData(model));
    productVariantDescriptionController
        .addListener(() => _updateFormData(model));
    productVariantCodeController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            ProductVariantNameValueKey: productVariantNameController.text,
            ProductVariantPriceValueKey: productVariantPriceController.text,
            ProductVariantCostValueKey: productVariantCostController.text,
            ProductVariantDescriptionValueKey:
                productVariantDescriptionController.text,
            ProductVariantCodeValueKey: productVariantCodeController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    productVariantNameController.dispose();
    productVariantPriceController.dispose();
    productVariantCostController.dispose();
    productVariantDescriptionController.dispose();
    productVariantCodeController.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get productVariantNameValue =>
      this.formValueMap[ProductVariantNameValueKey];
  String? get productVariantPriceValue =>
      this.formValueMap[ProductVariantPriceValueKey];
  String? get productVariantCostValue =>
      this.formValueMap[ProductVariantCostValueKey];
  String? get productVariantDescriptionValue =>
      this.formValueMap[ProductVariantDescriptionValueKey];
  String? get productVariantCodeValue =>
      this.formValueMap[ProductVariantCodeValueKey];

  bool get hasProductVariantName =>
      this.formValueMap.containsKey(ProductVariantNameValueKey);
  bool get hasProductVariantPrice =>
      this.formValueMap.containsKey(ProductVariantPriceValueKey);
  bool get hasProductVariantCost =>
      this.formValueMap.containsKey(ProductVariantCostValueKey);
  bool get hasProductVariantDescription =>
      this.formValueMap.containsKey(ProductVariantDescriptionValueKey);
  bool get hasProductVariantCode =>
      this.formValueMap.containsKey(ProductVariantCodeValueKey);
}

extension Methods on FormViewModel {}
