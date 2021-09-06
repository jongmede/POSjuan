import 'package:juanpos/model/application_models.dart';
import 'package:juanpos/screens/business/create_business/business_types_view.dart';
import 'package:juanpos/screens/business/create_business/create_business_view.form.dart';
import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'create_business_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'businessName'),
  FormTextField(name: 'country'),
  FormTextField(name: 'city'),
  FormTextField(name: 'taxNo'),
  FormTextField(name: 'pinCode'),
  FormTextField(name: 'mobile'),
  FormTextField(name: 'type'),
])
class CreateBusinessView extends StatelessWidget with $CreateBusinessView {
  final Business? business;
  final bool isInitial;

  CreateBusinessView({Key? key, this.business, required this.isInitial})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateBusinessViewModel>.reactive(
        viewModelBuilder: () => CreateBusinessViewModel(business, isInitial),
        onModelReady: (model) {
          listenToFormUpdated(model);
          if (business != null) {
            businessNameController.text = business!.businessName;
            countryController.text = business!.country;
            cityController.text = business!.city;
            pinCodeController.text = business!.pinCode;
            taxNoController.text = business!.taxNO;
            mobileController.text = business!.mobile;
            typeController.text = business!.type;
          }
        },
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: Text("NEW BUSINESS"),
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
                          labelText: 'Business Name',
                          border: OutlineInputBorder(),
                        ),
                        controller: businessNameController,
                      ),
                      verticalSpaceRegular,
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Country',
                          border: OutlineInputBorder(),
                        ),
                        controller: countryController,
                      ),
                      verticalSpaceRegular,
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'City',
                          border: OutlineInputBorder(),
                        ),
                        controller: cityController,
                      ),
                      verticalSpaceRegular,
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Tax No',
                          border: OutlineInputBorder(),
                        ),
                        controller: taxNoController,
                      ),
                      verticalSpaceRegular,
                      TextField(
                          decoration: InputDecoration(
                            labelText: 'Pin Code',
                            border: OutlineInputBorder(),
                          ),
                          controller: pinCodeController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^\d+\.?\d{0,1}'))
                          ]),
                      verticalSpaceRegular,
                      TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter Mobile Number',
                            border: OutlineInputBorder(),
                          ),
                          controller: mobileController,
                          keyboardType: TextInputType.phone,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^\d+\.?\d{0,1}'))
                          ]),
                      verticalSpaceRegular,
                      GestureDetector(
                        onTap: () async {
                          var result = await showDialog(
                              context: context,
                              builder: (context) => BusinessTypeView());
                          if (result != null) {
                            typeController.text = result as String;
                            model.notifyListeners();
                          }
                        },
                        child: TextField(
                          enabled: false,
                          decoration: InputDecoration(
                            labelText: 'Type Of Business',
                            border: OutlineInputBorder(),
                            disabledBorder: OutlineInputBorder(),
                          ),
                          controller: typeController,
                        ),
                      ),
                      verticalSpaceRegular,
                      if (model.initialSetup)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Checkbox(
                                value: model.policyCheck,
                                onChanged: (value) {
                                  model.updatePolicy(value!);
                                }),
                            verticalSpaceTiny,
                            Text(
                              "I AGREE",
                              style: GoogleFonts.roboto(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      if (model.initialSetup) verticalSpaceTiny,
                      if (model.initialSetup)
                        Text(
                          "TERMS AND CONDITION",
                          style: GoogleFonts.roboto(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      if (model.initialSetup) verticalSpaceRegular,
                      if (model.initialSetup)
                        Text(
                          "PRIVACY POLICY",
                          style: GoogleFonts.roboto(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      if (model.initialSetup) verticalSpaceRegular,
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
