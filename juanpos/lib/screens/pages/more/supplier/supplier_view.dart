import 'package:juanpos/screens/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'delete_supplier/delete_supplier_view.dart';
import 'supplier_viewmodel.dart';

class SupplierView extends StatelessWidget {
  SupplierView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SupplierViewModel>.reactive(
        viewModelBuilder: () => SupplierViewModel(),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: Text(
                  "Suppliers",
                  style: GoogleFonts.roboto(),
                ),
              ),
              body: model.isBusy
                  ? Center(child: CircularProgressIndicator())
                  : model.hasError
                      ? Column(
                          children: [Text("Error: ${model.error}")],
                        )
                      : model.suppliers == null || model.suppliers!.isEmpty
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                    child: Text(
                                  "No suppliers added",
                                  textAlign: TextAlign.center,
                                ))
                              ],
                            )
                          : ListView.builder(
                              itemCount: model.suppliers!.length,
                              itemBuilder: (context, index) => Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                    child: Container(
                                      decoration:
                                          BoxDecoration(border: Border.all()),
                                      child: Row(children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: CircleAvatar(
                                            minRadius: 20,
                                            maxRadius: 30,
                                            backgroundColor: kcPrimaryColor,
                                            child: Text(
                                              model.suppliers![index].companyName!
                                                  .substring(0, 1)
                                                  .toUpperCase(),
                                              style: GoogleFonts.roboto(
                                                  fontSize: 24,
                                                  fontWeight:
                                                      FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            model.suppliers![index].companyName! ,
                                            style: GoogleFonts.roboto(
                                                fontSize: 18,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () async {
                                            await showDialog(
                                                context: context,
                                                builder: (context) =>
                                                    DeleteSupplierView(
                                                        supplier:
                                                            model.suppliers![
                                                                index]));
                                            model.notifyListeners();
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                                "asset/images/Trash.png"),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: GestureDetector(
                                            onTap: () async {
                                              await model
                                                  .navigateToUpdateSupplier(model.suppliers![index]);
                                              model.notifyListeners();
                                            },
                                            child: Image.asset(
                                                "asset/images/Edit.png"),
                                          ),
                                        )
                                      ]),
                                    ),
                                  )),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Theme.of(context).primaryColor,
                onPressed: () async {
                  await model.navigateToCreateSupplier();
                  model.notifyListeners();
                },
                child: Icon(Icons.add),
              ),
            ));
  }
}
