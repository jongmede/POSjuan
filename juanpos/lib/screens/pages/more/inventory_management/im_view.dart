import 'package:juanpos/screens/pages/more/inventory_management/item/items_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'category/category_view.dart';
import 'im_viewmodel.dart';

class IMView extends StatelessWidget {
  const IMView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(viewModelBuilder: ()=> IMViewModel(), builder: (context, model, child) => Scaffold(
      appBar: AppBar(
        title: Text(
          "INVENTORY MANAGEMENT",
          style:
          GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(children: [
          Material(
            color: Colors.white,
            child: TabBar(
              indicatorColor: Colors.blueAccent,
              labelColor: Colors.black,
              tabs: [
                Tab(text: "ITEM"),
                Tab(text: "CATEGORY"),
              ],
            ),
          ),
          Expanded(child: TabBarView(children: [
            ItemsView(),
            CategoryView(),
          ],))
        ],)
      ),

    )
    );
  }
}
