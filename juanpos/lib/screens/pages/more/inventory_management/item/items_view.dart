import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'delete_item/delete_item_view.dart';
import 'items_viewmodel.dart';

class ItemsView extends StatelessWidget {
  ItemsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ItemsViewModel>.reactive(
        viewModelBuilder: () => ItemsViewModel(),
        builder: (context, model, child) => Scaffold(
              body: model.isBusy
                  ? Center(child: CircularProgressIndicator())
                  : model.hasError
                      ? Column(
                          children: [Text("Error: ${model.error}")],
                        )
                      : model.items == null || model.items!.isEmpty
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                    child: Text(
                                  "No items added",
                                  textAlign: TextAlign.center,
                                ))
                              ],
                            )
                          : ListView.builder(
                              itemCount: model.items!.length,
                              itemBuilder: (context, index) => Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                    child: Container(
                                      decoration:
                                          BoxDecoration(border: Border.all()),
                                      child: ExpansionTile(
                                        title: Row(children: [
                                          Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                padding: EdgeInsets.all(8),
                                                decoration: BoxDecoration(
                                                    border: Border.all(),
                                                    shape: BoxShape.circle),
                                                child: Image.asset(
                                                    "asset/images/Add Image.png"),
                                              )),
                                          Expanded(
                                            child: Text(
                                              (model.items![index])
                                                  .productName!,
                                              style: GoogleFonts.roboto(
                                                  fontSize: 18,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () async {
                                              await showDialog(
                                                  context: context,
                                                  builder: (context) =>
                                                      DeleteItemView(
                                                        item:
                                                            model.items![index],
                                                      ));
                                              model.notifyListeners();
                                            },
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                  "asset/images/Trash.png"),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: GestureDetector(
                                              onTap: () async {
                                                await model
                                                    .navigateToUpdateItem(
                                                        (model.items![index]));
                                              },
                                              child: Image.asset(
                                                  "asset/images/Edit.png"),
                                            ),
                                          )
                                        ]),
                                      ),
                                    ),
                                  )),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Theme.of(context).primaryColor,
                onPressed: () async {
                  await model.navigateToCreateItem();
                  model.notifyListeners();
                },
                child: Icon(Icons.add),
              ),
            ));
  }
}
