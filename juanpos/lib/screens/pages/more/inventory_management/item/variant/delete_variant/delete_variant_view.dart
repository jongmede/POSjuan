import 'package:juanpos/model/application_models.dart';
import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'delete_variant_viewmodel.dart';

class DeleteVariantView extends StatelessWidget {

  final ItemVariant variant;
  DeleteVariantView({Key? key, required this.variant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DeleteVariantViewModel>.reactive(
        viewModelBuilder: () => DeleteVariantViewModel(variant),
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
                                "DELETE VARIANT",
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
                          Text("Are sure? You want to delete ${variant.name}", style: GoogleFonts.roboto(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),),
                          verticalSpaceMedium,
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                            child: BoxButton(
                              title: "DELETE",
                              busy: model.isBusy,
                              color: Colors.redAccent,
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
