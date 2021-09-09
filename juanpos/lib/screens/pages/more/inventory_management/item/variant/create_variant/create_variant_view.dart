import 'dart:io';

import 'package:juanpos/model/application_models.dart';
import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'create_variant_view.form.dart';
import 'create_variant_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'productVariantName'),
  FormTextField(name: 'productVariantPrice'),
  FormTextField(name: 'productVariantCost'),
  FormTextField(name: 'productVariantDescription'),
  FormTextField(name: 'productVariantCode'),
  // FormTextField(name: 'productVariantTax'),
  // FormTextField(name: 'productVariantInternalNote'),
])
class CreateItemVariantView extends StatelessWidget
    with $CreateItemVariantView {
  final ItemVariant? variant;
  CreateItemVariantView({Key? key, this.variant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateItemVariantViewModel>.reactive(
        viewModelBuilder: () => CreateItemVariantViewModel(variant),
        onModelReady: (model) {
          listenToFormUpdated(model);
          if (variant != null) {
            productVariantNameController.text = variant!.name;
            productVariantPriceController.text =
                variant!.price.toString();
            productVariantCostController.text =
                variant!.cost.toString();
            productVariantDescriptionController.text =
                variant!.description == null
                    ? ""
                    : variant!.description!;
            productVariantCodeController.text = variant!.prodCode;
            /*productVariantTaxController.text =
                variant!.productVariantTax.toString();
            productVariantInternalNoteController.text =
                variant!.internalNote == null ? "" : variant!.internalNote!;
            model.isDiscount = variant!.isProductVariantDiscount;
            model.isTax = variant!.isProductVariantTax;*/
            model.discountCategory["SENIOR CITIZEN"] = variant!.discount_SC;
            model.discountCategory["PWD"] = variant!.discount_PWD;
            model.discountCategory["SPECIAL"] = variant!.discount_Spl;

          }
        },
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: Text("NEW VARIANT"),
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
                          GestureDetector(
                            onTap: (){
                              showDialog(context: context, builder: (context) => buildUploadImage(context, model));
                            },
                            child: Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  shape: BoxShape.circle),
                              child: model.selectedImage == null ? Image.asset("asset/images/Add Image.png") : Image.file(File(model.selectedImage!.path), width: 32, height: 32,),
                            ),
                          ),
                          horizontalSpaceSmall,
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Variant Name',
                                border: OutlineInputBorder(),
                              ),
                              controller: productVariantNameController,
                            ),
                          ),
                        ],
                      ),
                      verticalSpaceRegular,
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Price',
                          border: OutlineInputBorder(),
                        ),
                        controller: productVariantPriceController,
                      ),
                      verticalSpaceRegular,
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Cost',
                          border: OutlineInputBorder(),
                        ),
                        controller: productVariantCostController,
                      ),
                      verticalSpaceRegular,
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Description',
                          border: OutlineInputBorder(),
                        ),
                        controller: productVariantDescriptionController,
                      ),
                      verticalSpaceRegular,
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Discount",
                                style: GoogleFonts.roboto(
                                    fontSize: 17, color: Colors.black38),
                              ),
                              Switch(
                                value: model.isDiscount,
                                activeColor: Color(0xFF6200EE),
                                onChanged: (bool value) {
                                  model.isDiscount = value;
                                  model.notifyListeners();
                                },
                              ),
                            ],
                          ),
                          horizontalSpaceSmall,
                          Expanded(
                            child: Wrap(
                              children: [
                                ...model.discountCategory.entries
                                    .map((e) => Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Checkbox(
                                              onChanged: (bool? value) {
                                                model.discountCategory.update(
                                                    e.key, (v) => value!);
                                                model.notifyListeners();
                                              },
                                              value: e.value,
                                              activeColor: Color(0xFF6200EE),
                                            ),
                                            Text(
                                              e.key,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1!
                                                  .copyWith(
                                                      color: !e.value
                                                          ? Colors.black38
                                                          : Colors.black),
                                            ),
                                          ],
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                        ))
                                    .toList(),
                              ],
                            ),
                          )
                        ],
                      ),
                      verticalSpaceRegular,
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Barcode',
                                border: OutlineInputBorder(),
                              ),
                              controller: productVariantCodeController,
                            ),
                          ),
                          horizontalSpaceSmall,
                          GestureDetector(
                            child: Image.asset("asset/images/Scan.png"),
                          )
                        ],
                      ),
                      verticalSpaceRegular,
                      /*Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Tax',
                                border: OutlineInputBorder(),
                              ),
                              controller: productVariantTaxController,
                            ),
                          ),
                          horizontalSpaceSmall,
                          Column(
                            children: [
                              Checkbox(
                                onChanged: (bool? value) {
                                  model.isTax = value!;
                                  model.notifyListeners();
                                },
                                value: model.isTax,
                                activeColor: Color(0xFF6200EE),
                              ),
                              Text(
                                "Include Tax",
                                style:
                                    GoogleFonts.roboto(color: Colors.black38),
                              ),
                            ],
                          ),
                        ],
                      ),
                      verticalSpaceRegular,
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Internal Note',
                          border: OutlineInputBorder(),
                        ),
                        controller: productVariantInternalNoteController,
                      ),
                      verticalSpaceRegular,*/
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
            ));
  }

  Widget buildUploadImage(
      BuildContext context, CreateItemVariantViewModel model) {
    return GestureDetector(
      onTap: (){
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
                              icon: Icon(Icons.close))
                        ],
                      ),
                      verticalSpaceTiny,
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                        child: BoxButton.outline(
                          title: "Gallery",
                          color: Colors.black,
                          onTap: () {
                            print("click");
                            Navigator.of(context).pop();
                            model.selectImageFromGallery();
                          },
                        ),
                      ),
                      verticalSpaceMedium,
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                        child: BoxButton.outline(
                          title: "Camera",
                          color: Colors.black,
                          onTap: () {
                            Navigator.of(context).pop();
                            model.takeImageFromCamera();
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
    );
  }
}
