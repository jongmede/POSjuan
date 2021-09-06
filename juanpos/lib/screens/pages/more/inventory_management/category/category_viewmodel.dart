import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/services/category_service.dart';
import 'package:juanpos/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CategoryViewModel extends FutureViewModel {
  final log = getLogger('CategoryViewModel');
  final navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();
  final _categoryService = locator<CategoryService>();

  List<Category>? get categories => _categoryService.categories;

  @override
  Future futureToRun() {
    return _categoryService.syncCategory(
        user: _userService.currentUser);
  }

}
