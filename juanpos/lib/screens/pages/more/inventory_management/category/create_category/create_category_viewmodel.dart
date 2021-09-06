import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/exceptions/firestore_api_exception.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/services/category_service.dart';
import 'package:juanpos/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'create_category_view.form.dart';

class CreateCategoryViewModel extends FormViewModel
{
  final log = getLogger('CategoryViewModel');
  final navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();
  final _categoryService = locator<CategoryService>();

  List<Category>? _category;

  List<Category>? get category => _category;

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

  List<Color> get colors => _colors;

  Future<void> createOrUpdateCategory(Color color) async {
    final result = await _categoryService.createCategory(
        category:
        Category(id: "", categoryName: categoryValue!, color: color.value),
        user: _userService.currentUser);
    validateResult(result);
  }

  Future saveData(Color color) async {
    log.i('valued:$formValueMap');
    if (!validateInputs()) {
      print(" not any value empry");
      setValidationMessage("Fields can't be empty");
      notifyListeners();
      return;
    }
    log.i('valued:$formValueMap');
    try {
      await runBusyFuture(createOrUpdateCategory(color), throwException: true);
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