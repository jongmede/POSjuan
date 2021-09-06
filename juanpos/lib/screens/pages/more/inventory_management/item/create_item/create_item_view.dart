import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/screens/pages/more/inventory_management/category/create_category/create_category_view.dart';
import 'package:juanpos/screens/pages/more/inventory_management/item/variant/delete_variant/delete_variant_view.dart';
import 'package:box_ui/box_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'create_item_view.form.dart';
import 'create_item_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'productName'),
  FormTextField(name: 'productDescription'),
  FormTextField(name: 'productCode'),
  FormTextField(name: 'categoryId'),
])
class CreateItemView extends StatelessWidget with $CreateItemView {
  final Item? item;

  CreateItemView({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateItemViewModel>.reactive(
      viewModelBuilder: () => CreateItemViewModel(item),
      onModelReady: (model) {
        listenToFormUpdated(model);
        model.syncCategory();
        if (item != null) {
          model.syncVariant();
          productNameController.text = item!.productName!;
          productDescriptionController.text = item!.productDescription!;
          productCodeController.text = item!.productCode!;
          categoryIdController.text = item!.categoryId!;
        }
      },
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text("NEW ITEM"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Column(
              children: [
                verticalSpaceRegular,
                if (model.validationMessage != null)
                  BoxText.body(
                    model.validationMessage!,
                    color: Colors.red,
                  ),
                if (model.validationMessage != null) verticalSpaceRegular,
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          shape: BoxShape.circle),
                      child: Image.asset("asset/images/Add Image.png"),
                    ),
                    horizontalSpaceSmall,
                    Expanded(
                      child: PopupMenuTheme(
                        data: PopupMenuThemeData(),
                        child: PopupMenuButton(
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 16),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Colors.black54,
                              )),
                              child: Row(
                                children: [
                                  Text(
                                    model.category != null
                                        ? model.category!.categoryName
                                        : "Select a category",
                                    style: GoogleFonts.roboto(
                                        fontSize: 17, color: Colors.black54),
                                  ),
                                  Spacer(),
                                  Icon(Icons.arrow_drop_down)
                                ],
                              ),
                            ),
                            offset: Offset(0, 56),
                            onSelected: (value) async {
                              if (value is Category) {
                                model.category = value;
                                model.notifyListeners();
                              } else {
                                await showDialog(
                                    context: context,
                                    builder: (context) => CreateCategoryView());
                                model.syncCategory();
                              }
                            },
                            itemBuilder: (BuildContext context) =>
                                <PopupMenuEntry>[
                                  PopupMenuItem(
                                    value: true,
                                    child: Container(
                                        width: double.infinity,
                                        child: ListTile(
                                          title: Text("Add New Category"),
                                        )),
                                  ),
                                  const PopupMenuDivider(),
                                  if (model.categories != null)
                                    ...model.categories!
                                        .map(
                                          (e) => PopupMenuItem(
                                            value: e,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: CircleAvatar(
                                                          minRadius: 15,
                                                          maxRadius: 20,
                                                          backgroundColor:
                                                              Color(e.color),
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      Expanded(
                                                          flex: 4,
                                                          child: ListTile(
                                                            title: Text(
                                                                e.categoryName),
                                                          )),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                        .toList()
                                ]),
                      ),
                    )
                  ],
                ),
                verticalSpaceRegular,
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Product Name',
                    border: OutlineInputBorder(),
                  ),
                  controller: productNameController,
                ),
                verticalSpaceRegular,
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Product Description',
                    border: OutlineInputBorder(),
                  ),
                  controller: productDescriptionController,
                ),
                verticalSpaceRegular,
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Product Code',
                    border: OutlineInputBorder(),
                  ),
                  controller: productCodeController,
                ),
                verticalSpaceRegular,
                if (model.variants.length > 0)
                  ...model.variants
                      .map((e) => buildVariant(context, e, model))
                      .toList(),
                verticalSpaceRegular,
                BoxButton(
                  title: "ADD VARIANT",
                  busy: model.isBusy,
                  onTap: () {
                    model.navigateToVariant();
                  },
                ),
                verticalSpaceRegular,
                BoxButton(
                  title: "SAVE",
                  busy: model.isBusy,
                  onTap: () {
                    model.saveData();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildVariant(BuildContext context, ItemVariant variant,
          CreateItemViewModel model) =>
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
        child: Container(
          decoration: BoxDecoration(border: Border.all()),
          child: Row(children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(), shape: BoxShape.circle),
                  child: Image.asset("asset/images/Add Image.png"),
                )),
            Expanded(
              child: Text(
                variant.productVariantName,
                style: GoogleFonts.roboto(
                    fontSize: 18, fontWeight: FontWeight.normal),
              ),
            ),
            GestureDetector(
              onTap: () async {
                await showDialog(
                    context: context,
                    builder: (context) => DeleteVariantView(variant: variant));
                await model.syncVariant();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("asset/images/Trash.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () async {
                  model.toUpdateVariantView(variant);
                },
                child: Image.asset("asset/images/Edit.png"),
              ),
            )
          ]),
        ),
      );
}
