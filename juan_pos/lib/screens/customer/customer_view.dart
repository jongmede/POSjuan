import 'package:juan_pos/screens/customer/customer_view.form.dart';
import 'package:juan_pos/screens/customer/customer_viewmodel.dart';
import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(fields: [
  FormTextField(name: 'firstName'),
  FormTextField(name: 'lastName'),
  FormTextField(name: 'mobile'),
  FormTextField(name: 'address'),
])
class CustomerView extends StatelessWidget with $CustomerView {
  CustomerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CustomerViewModel>.reactive(
        viewModelBuilder: () => CustomerViewModel(),
        onModelReady: (model) => listenToFormUpdated(model),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: Text("NEW CUSTOMER"),
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
                      decoration: InputDecoration(labelText: 'First Name'),
                      controller: firstNameController,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Last Name'),
                      controller: lastNameController,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Mobile'),
                      controller: mobileController,
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
                              if(!model.isBusy)
                                Navigator.of(context).pop();
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
