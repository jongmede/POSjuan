import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/app/app.router.dart';
import 'package:juanpos/exceptions/firestore_api_exception.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/services/category_service.dart';
import 'package:juanpos/services/items_service.dart';
import 'package:juanpos/services/user_service.dart';
import 'package:juanpos/services/variant_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'create_item_view.form.dart';

class CreateItemViewModel extends FormViewModel {
  final log = getLogger('CreateItemViewModel');
  final navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();
  final _itemService = locator<ItemService>();
  final _categoryService = locator<CategoryService>();
  final _itemVariantService = locator<ItemVariantService>();

  List<ItemVariant> variants = [];

  List<Category>? get categories => _categoryService.categories;

  Category dropDownValue = Category(
      id: "", categoryName: "Select Category", color: Colors.transparent.value);

  Item? item;

  Category? category;

  CreateItemViewModel(Item? item) {
    if (item != null) {
      this.item = item;
    } else {
      this.item = Item(
          id: "",
          productName: "",
          description: "",
          productCode: "",
          category: "");
    }
  }

  @override
  void setFormStatus() {}

  Future syncCategory() async {
    try {
      await runBusyFuture(
          _categoryService.syncCategory(user: _userService.currentUser),
          throwException: true);
      if (_categoryService.categories != null && item!.id.isNotEmpty) {
        category = _categoryService.categories!
            .firstWhere((element) => element.categoryName == item!.category);
        notifyListeners();
      }
    } on FirestoreApiException catch (e) {
      log.e(e.toString());
      setValidationMessage(e.toString());
    }
  }

  Future<void> syncVariant() async {
    if (item != null) {
      try {
        final result = await runBusyFuture(
            _itemVariantService.syncItemVariant(
                user: _userService.currentUser, item: item!),
            throwException: true);
        if (result != null) {
          variants = result;
          notifyListeners();
        }
      } on FirestoreApiException catch (e) {
        log.e(e.toString());
        setValidationMessage(e.toString());
      }
    }
  }

  Future<void> createItem() async {
    final result = await _itemService.createItem(
        item: item!.copyWith(
          productName: productNameValue!,
          description: productDescriptionValue!,
          productCode: productCodeValue!,
          category: category!.categoryName,
        ),
        variants: variants,
        user: _userService.currentUser);
    validateResult(result);
  }

  Future<void> updateItem() async {
    final result = await _itemService.updateItem(
        newValue: item!.copyWith(
            productName: productNameValue!,
            description: productDescriptionValue!,
            productCode: productCodeValue!,
            category: category!.categoryName),
        user: _userService.currentUser);
    validateResult(result);
  }

  Future saveData() async {
    log.i('valued:$formValueMap');
    if (!validateInputs()) {
      setValidationMessage("Fields can't be empty");
      return;
    }
    try {
      if (item!.id.isEmpty) {
        await runBusyFuture(createItem(), throwException: true);
      } else {
        await runBusyFuture(updateItem(), throwException: true);
      }
    } on FirestoreApiException catch (e) {
      log.e(e.toString());
      setValidationMessage(e.toString());
    }
  }

  Future navigateToVariant() => toCreateVariantView();

  Future updateToVariant(ItemVariant variant) => toUpdateVariantView(variant);

  bool validateInputs() {
    return productNameValue != null &&
        productNameValue!.isNotEmpty &&
        productDescriptionValue != null &&
        productDescriptionValue!.isNotEmpty &&
        productCodeValue != null &&
        productCodeValue!.isNotEmpty &&
        category != null;
  }

  void validateResult(bool result) {
    if (!result) {
      setValidationMessage("Item already exists");
    } else {
      navigationService.popRepeated(1);
    }
  }

  toCreateVariantView() async {
    final result = await navigationService.navigateTo(
        Routes.createItemVariantView,
        arguments: CreateItemVariantViewArguments(variant: null));
    if (result != null) {
      log.i("result:$result");
      variants.add(result);
      notifyListeners();
    }
  }

  toUpdateVariantView(ItemVariant variant) async {
    variants.remove(variant);
    final result = await navigationService.navigateTo(
        Routes.createItemVariantView,
        arguments: CreateItemVariantViewArguments(variant: variant));
    if (result != null && (result as ItemVariant).id.isEmpty) {
      log.i("result:$result");
      variants.add(result);
      notifyListeners();
    }
  }

  toCreateCategoryView() =>
      navigationService.navigateTo(Routes.createCategoryView);
}
