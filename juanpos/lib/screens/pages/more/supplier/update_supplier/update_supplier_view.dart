
import 'package:juanpos/model/application_models.dart';
import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'update_supplier_view.form.dart';
import 'update_supplier_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'companyName'),
  FormTextField(name: 'mobile'),
  FormTextField(name: 'contactName'),
  FormTextField(name: 'address'),
  FormTextField(name: 'email'),
  FormTextField(name: 'website'),
])
class UpdateSupplierView extends StatelessWidget with $UpdateSupplierView {

  final Supplier supplier;

  UpdateSupplierView({Key? key, required this.supplier}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<UpdateSupplierViewModel>.reactive(
        viewModelBuilder: () => UpdateSupplierViewModel(supplier),
        onModelReady: (model) {listenToFormUpdated(model);
          companyNameController.text = supplier.companyName!;
          contactNameController.text = supplier.contactName!;
          mobileController.text = supplier.mobile;
          addressController.text = supplier.address!;
          emailController.text = supplier.email!;
          websiteController.text = supplier.website!;
        },
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: Text("UPDATE SUPPLIER"),
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
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}
