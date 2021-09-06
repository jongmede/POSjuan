import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'create_supplier_view.form.dart';
import 'create_supplier_viewmodel.dart';


@FormView(fields: [
  FormTextField(name: 'companyName'),
  FormTextField(name: 'mobile'),
  FormTextField(name: 'contactName'),
  FormTextField(name: 'address'),
  FormTextField(name: 'email'),
  FormTextField(name: 'website'),
])
class CreateSupplierView extends StatelessWidget with $CreateSupplierView {
  CreateSupplierView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateSupplierViewModel>.reactive(
        viewModelBuilder: () => CreateSupplierViewModel(),
        onModelReady: (model) => listenToFormUpdated(model),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: Text("NEW SUPPLIER"),
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
                      TextField(
                        decoration: InputDecoration(labelText: 'Company', border: OutlineInputBorder(),),
                        controller: companyNameController,
                      ),
                      verticalSpaceRegular,
                      TextField(
                          decoration: InputDecoration(labelText: 'Mobile', border: OutlineInputBorder(),),
                          controller: mobileController,
                          keyboardType: TextInputType.phone,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^\d+\.?\d{0,1}'))
                          ]),
                      verticalSpaceRegular,
                      TextField(
                        decoration: InputDecoration(labelText: 'Contact Name', border: OutlineInputBorder(),),
                        controller: contactNameController,
                      ),
                      verticalSpaceRegular,
                      TextField(
                        decoration: InputDecoration(labelText: 'Address', border: OutlineInputBorder(),),
                        controller: addressController,
                      ),
                      verticalSpaceRegular,
                      TextField(
                        decoration: InputDecoration(labelText: 'Email', border: OutlineInputBorder(),),
                        controller: emailController,
                      ),
                      verticalSpaceRegular,
                      TextField(
                        decoration: InputDecoration(labelText: 'Website', border: OutlineInputBorder(),),
                        controller: websiteController,
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
            ));
  }
}
