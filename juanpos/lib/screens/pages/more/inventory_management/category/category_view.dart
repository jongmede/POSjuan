import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'category_viewmodel.dart';
import 'create_category/create_category_view.dart';
import 'delete_category/delete_category_view.dart';
import 'update_category/update_category_view.dart';

class CategoryView extends StatelessWidget {
  CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CategoryViewModel>.reactive(
        viewModelBuilder: () => CategoryViewModel(),
        builder: (context, model, child) => Scaffold(
              body: model.isBusy
                  ? Center(child: CircularProgressIndicator())
                  : model.hasError
                      ? Column(
                          children: [Text("Error: ${model.error}")],
                        )
                      : model.categories == null || model.categories!.isEmpty
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [Center(child: Text("No categories added", textAlign: TextAlign.center,))],
                            )
                          : ListView.builder(
                              itemCount: model.categories!.length,
                              itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.fromLTRB(8,4,8,4),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all()
                                      ),
                                      child: Row(children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: CircleAvatar(
                                            minRadius: 20,
                                            maxRadius: 30,
                                            backgroundColor: Color((model.categories![index]).color),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            (model.categories![index]).categoryName,
                                            style: GoogleFonts.roboto(
                                                fontSize: 18,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () async {
                                            await showDialog(
                                                context: context,
                                                builder: (context) => DeleteCategoryView(category: model.categories![index]));
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
                                              await showDialog(
                                                  context: context,
                                                  builder: (context) => UpdateCategoryView(category: model.categories![index]));
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
                  await showDialog(
                      context: context,
                      builder: (context) => CreateCategoryView());
                  model.notifyListeners();
                },
                child: Icon(Icons.add),
              ),
            ));
  }
}
