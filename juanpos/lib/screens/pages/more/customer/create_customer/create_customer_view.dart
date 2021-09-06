
import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'create_customer_view.form.dart';
import 'create_customer_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'firstName'),
  FormTextField(name: 'lastName'),
  FormTextField(name: 'mobile'),
  FormTextField(name: 'address'),
])
class CreateCustomerView extends StatelessWidget with $CreateCustomerView {
  CreateCustomerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateCustomerViewModel>.reactive(
        viewModelBuilder: () => CreateCustomerViewModel(),
        onModelReady: (model) => listenToFormUpdated(model),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: Text("NEW CUSTOMER"),
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
                        decoration: InputDecoration(
                          labelText: 'First Name',
                          border: OutlineInputBorder(

                          ),
                        ),
                        controller: firstNameController,
                      ),
                      verticalSpaceRegular,
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Last Name',
                          border: OutlineInputBorder(),
                        ),
                        controller: lastNameController,
                      ),
                      verticalSpaceRegular,
                      TextField(
                          decoration: InputDecoration(
                            labelText: 'Mobile',
                            border: OutlineInputBorder(),
                          ),
                          controller: mobileController,
                          keyboardType: TextInputType.phone,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^\d+\.?\d{0,1}'))
                          ]),
                      verticalSpaceRegular,
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Address',
                          border: OutlineInputBorder(),
                        ),
                        controller: addressController,
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
