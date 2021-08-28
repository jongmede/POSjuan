import 'package:juan_pos/screens/supplier/supplier_view.form.dart';
import 'package:juan_pos/screens/supplier/supplier_viewmodel.dart';
import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(fields: [
  FormTextField(name: 'companyName'),
  FormTextField(name: 'mobile'),
  FormTextField(name: 'contactName'),
  FormTextField(name: 'address'),
])
class SupplierView extends StatelessWidget with $SupplierView {
  SupplierView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SupplierViewModel>.reactive(
        viewModelBuilder: () => SupplierViewModel(),
        onModelReady: (model) => listenToFormUpdated(model),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: Text("NEW SUPPLIER"),
              ),
              body: Container(
                padding: EdgeInsets.all(24),
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
                      decoration: InputDecoration(labelText: 'Company'),
                      controller: companyNameController,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Mobile'),
                      controller: mobileController,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Contact Name'),
                      controller: contactNameController,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Address'),
                      controller: addressController,
                    ),
                    verticalSpaceRegular,
                    Row(
                      children: [
                        Expanded(
                          child: BoxButton(
                            title: "CANCEL",
                            color: Colors.redAccent,
                            onTap: () {
                              if (!model.isBusy) Navigator.of(context).pop();
                            },
                          ),
                        ),
                        horizontalSpaceTiny,
                        Expanded(
                            child: BoxButton(
                          title: "ADD",
                          busy: model.isBusy,
                          onTap: () {
                            model.saveData();
                          },
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ));
  }
}
