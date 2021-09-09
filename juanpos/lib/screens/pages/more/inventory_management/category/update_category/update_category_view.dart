import 'package:juanpos/model/application_models.dart';
import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'update_category_view.form.dart';
import 'update_category_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'category'),
])
class UpdateCategoryView extends StatelessWidget with $UpdateCategoryView {
  final Category category;

  UpdateCategoryView({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<UpdateCategoryViewModel>.reactive(
        viewModelBuilder: () => UpdateCategoryViewModel(category),
        onModelReady: (model){
          listenToFormUpdated(model);
          categoryController.text = category.categoryName;
        },
        builder: (context, model, child) => GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(Icons.close)),
                              Text(
                                "UPDATE CATEGORY",
                                style: GoogleFonts.roboto(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          verticalSpaceRegular,
                          if (model.validationMessage != null)
                            Padding(
                              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                              child: BoxText.body(
                                model.validationMessage!,
                                color: Colors.red,
                              ),
                            ),
                          if (model.validationMessage != null)
                            verticalSpaceRegular,
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Category Name',
                                suffixIcon: Icon(
                                  Icons.circle,
                                  color: model.selectedColor,
                                  size: 50,
                                ),
                              ),
                              controller: categoryController,
                            ),
                          ),
                          verticalSpaceMedium,
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                              child: GridView.count(
                                shrinkWrap: true,
                                crossAxisCount: 4,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                children: model.colors
                                    .map((e) => GestureDetector(
                                          onTap: () {
                                            model.category = Category(
                                              id: model.category.id,
                                                categoryName:
                                                    model.category.categoryName,
                                                color: e.value);
                                                model.selectedColor = e;

                                            model.notifyListeners();
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: e,
                                                shape: BoxShape.circle),
                                          ),
                                        ))
                                    .toList(),
                              ),
                            ),
                          ),
                          verticalSpaceMedium,
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                            child: BoxButton(
                              title: "SAVE",
                              onTap: () {
                                model.saveData();
                              },
                            ),
                          ),
                          verticalSpaceMedium
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ));
  }
}
