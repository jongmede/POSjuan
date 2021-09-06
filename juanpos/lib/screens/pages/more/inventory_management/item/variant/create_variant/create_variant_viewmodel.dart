import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/exceptions/firestore_api_exception.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/services/items_service.dart';
import 'package:juanpos/services/variant_service.dart';
import 'package:juanpos/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'create_variant_view.form.dart';

class CreateItemVariantViewModel extends FormViewModel {
  final log = getLogger('CreateItemVariantViewModel');
  final navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();
  final _itemVariantService = locator<ItemVariantService>();

  bool isDiscount = false;
  bool isTax = false;
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
    final result = await _itemVariantService.updateItemVariant(newValue: variant!.copyWith(productVariantName: productVariantNameValue!,
        productVariantPrice: double.parse(productVariantPriceValue!),
        productVariantCost: double.parse(productVariantCostValue!),
        productVariantDescription: productVariantDescriptionValue,
        productVariantDiscountType: discountCategory,
        productVariantDiscount: isDiscount ? 20.0 : 0,
        isProductVariantDiscount: isDiscount,
        productVariantCode: productVariantCodeValue!,
        isProductVariantTax: isTax,
        productVariantTax: isTax ? double.parse(productVariantTaxValue!) : 0,
        internalNote: productVariantInternalNoteValue), user: _userService.currentUser);
    validateResult(result);
  }

  Future saveData() async {
    log.i('valued:$formValueMap');

    if (!validateInputs()) {
      setValidationMessage("Fields can't be empty");
      return;
    }
    if (variant == null) {
      variant = ItemVariant(
          id: "",
          itemId: "",
          productVariantName: productVariantNameValue!,
          productVariantPrice: double.parse(productVariantPriceValue!),
          productVariantCost: double.parse(productVariantCostValue!),
          productVariantDescription: productVariantDescriptionValue,
          productVariantDiscountType: discountCategory,
          productVariantDiscount: isDiscount ? 20.0 : 0,
          isProductVariantDiscount: isDiscount,
          productVariantCode: productVariantCodeValue!,
          isProductVariantTax: isTax,
          productVariantTax: isTax ? double.parse(productVariantTaxValue!) : 0,
          internalNote: productVariantInternalNoteValue);
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
    bool tax = false;

    if (isTax) {
      tax =
          productVariantTaxValue != null && productVariantTaxValue!.isNotEmpty;
    } else {
      tax = true;
    }

    return productVariantNameValue != null &&
        productVariantNameValue!.isNotEmpty &&
        productVariantPriceValue != null &&
        productVariantPriceValue!.isNotEmpty &&
        productVariantCostValue != null &&
        productVariantCostValue!.isNotEmpty &&
        productVariantCodeValue != null &&
        productVariantCodeValue!.isNotEmpty &&
        tax;
  }

  void validateResult(bool result) {
    if (!result) {
      setValidationMessage("Supplier already exists");
    } else {
      navigationService.back(result: variant);
    }
  }
}
