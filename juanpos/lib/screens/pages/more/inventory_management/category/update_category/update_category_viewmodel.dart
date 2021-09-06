import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/exceptions/firestore_api_exception.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/services/category_service.dart';
import 'package:juanpos/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'update_category_view.form.dart';

class UpdateCategoryViewModel extends FormViewModel {
  final log = getLogger('UpdateCategoryViewModel');
  final navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();
  final _categoryService = locator<CategoryService>();

  Category category;

  final List<Color> _colors = [
    Colors.redAccent,
    Colors.orangeAccent,
    Colors.yellowAccent,
    Colors.lightGreenAccent,
    Colors.greenAccent,
    Colors.blueAccent,
    Colors.black,
    Colors.purple
  ];

  Color selectedColor = Colors.redAccent;

  UpdateCategoryViewModel(this.category)
      : selectedColor = Color(category.color);

  List<Color> get colors => _colors;

  Future<void> createOrUpdateCategory({
    required Category newValue,
    required Category oldValue,
  }) async {
    if (newValue == oldValue) {
      validateResult(true);
      return;
    }
    final result = await _categoryService.updateCategory(
        newValue: newValue, oldValue: oldValue, user: _userService.currentUser);
    validateResult(result);
  }

  Future saveData() async {
    log.i('valued:$formValueMap');
    if (!validateInputs()) {
      setValidationMessage("Fields can't be empty");
      notifyListeners();
      return;
    }
    log.i('valued:$formValueMap');
    try {
      final newCategory = category.copyWith(
          categoryName: categoryValue!, color: selectedColor.value);
      await runBusyFuture(
          createOrUpdateCategory(newValue: newCategory, oldValue: category),
          throwException: true);
    } on FirestoreApiException catch (e) {
      log.e(e.toString());
      setValidationMessage(e.toString());
    }
  }

  bool validateInputs() {
    return categoryValue != null && categoryValue!.isNotEmpty;
  }

  void validateResult(bool result) {
    if (!result) {
      setValidationMessage("Customer already exists");
    } else {
      navigationService.popRepeated(1);
    }
  }

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }
}
