import 'dart:io';

import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/exceptions/firestore_api_exception.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/services/image_picker_service.dart';
import 'package:juanpos/services/variant_service.dart';
import 'package:juanpos/services/user_service.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'create_variant_view.form.dart';

class CreateItemVariantViewModel extends FormViewModel {
  final log = getLogger('CreateItemVariantViewModel');
  final navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();
  final _itemVariantService = locator<ItemVariantService>();
  final _imagePicker = locator<ImagePickerService>();

  bool isDiscount = false;
  bool isImageChanged = false;
  bool isTax = false;
  XFile? selectedImage;
  Map<String, bool> discountCategory = {
    "SENIOR CITIZEN": false,
    "PWD": false,
    "SPECIAL": false
  };

  ItemVariant? variant;

  CreateItemVariantViewModel(this.variant);

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }

  Future<void> updateVariant() async {
    final result = await _itemVariantService.updateItemVariant(
        newValue: variant!.copyWith(
            name: productVariantNameValue!,
            price: double.parse(productVariantPriceValue!),
            cost: double.parse(productVariantCostValue!),
            description: productVariantDescriptionValue,
            discount: isDiscount ? 20.0 : 0,
            prodCode: productVariantCodeValue!,
            discount_Spl: discountCategory["SPECIAL"]!,
            discount_PWD: discountCategory["PWD"]!,
            discount_SC: discountCategory["SENIOR CITIZEN"]!,
            image: selectedImage != null && selectedImage!.path.isImageFileName
                ? selectedImage!.path
                : null),
        user: _userService.currentUser, isImageChanged: isImageChanged);
    validateResult(result);
  }

  Future saveData() async {
    log.i('valued:$formValueMap');

    if (!validateInputs()) {
      setValidationMessage("Fields can't be empty");
      return;
    }
    if (variant == null || variant!.id.isEmpty) {
      variant = ItemVariant(
          id: "",
          prodID: "",
          name: productVariantNameValue!,
          price: double.parse(productVariantPriceValue!),
          cost: double.parse(productVariantCostValue!),
          description: productVariantDescriptionValue,
          discount: isDiscount ? 20.0 : 0,
          prodCode: productVariantCodeValue!,
          discount_Spl: discountCategory["SPECIAL"]!,
          discount_PWD: discountCategory["PWD"]!,
          discount_SC: discountCategory["SENIOR CITIZEN"]!,
          image: selectedImage != null && selectedImage!.path.isImageFileName
              ? selectedImage!.path
              : null);
      validateResult(true);
    } else {
      try {
        await runBusyFuture(updateVariant(), throwException: true);
      } on FirestoreApiException catch (e) {
        log.e(e.toString());
        setValidationMessage(e.toString());
      }
    }
  }

  bool validateInputs() {
    /*bool tax = false;

    if (isTax) {
      tax =
          productVariantTaxValue != null && productVariantTaxValue!.isNotEmpty;
    } else {
      tax = true;
    }*/

    return productVariantNameValue != null &&
            productVariantNameValue!.isNotEmpty &&
            productVariantPriceValue != null &&
            productVariantPriceValue!.isNotEmpty &&
            productVariantCostValue != null &&
            productVariantCostValue!.isNotEmpty &&
            productVariantCodeValue != null &&
            productVariantCodeValue!.isNotEmpty /*&&
        tax*/
        ;
  }

  void validateResult(bool result) {
    if (!result) {
      setValidationMessage("Supplier already exists");
    } else {
      navigationService.back(result: variant);
    }
  }

  Future selectImageFromGallery() async {
    try {
      final result = await runBusyFuture(_imagePicker.selectImageFromGallery(),
          throwException: true);
      if (result != null) {
        selectedImage = result;
        isImageChanged = true;
        notifyListeners();
      }
    } on FirestoreApiException catch (e) {
      log.e(e.toString());
      setValidationMessage(e.toString());
    }
  }

  Future takeImageFromCamera() async {
    try {
      log.d("Loading image");
      final result = await runBusyFuture(_imagePicker.takeImageFromCamera(),
          throwException: true);
      log.d("image:$result");
      if (result != null) {
        selectedImage = result;
        isImageChanged = true;
        notifyListeners();
      }
    } on FirestoreApiException catch (e) {
      log.e(e.toString());
      setValidationMessage(e.toString());
    }
  }
}
