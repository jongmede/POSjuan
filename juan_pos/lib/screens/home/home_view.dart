import 'package:juan_pos/screens/widgets/custom_navigation_bar.dart';
import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text(
            "POINT OF SALES",
            style:
                GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => buildCreateUsersDialog(context, model));
                },
                icon: Icon(Icons.person_add))
          ],
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          iconList: [
            Image.asset('asset/images/report.png'),
            Image.asset('asset/images/item.png'),
            Image.asset('asset/images/counter.png'),
            Image.asset('asset/images/list.png'),
            Image.asset('asset/images/more.png'),
          ],
          onChange: (val) {
            model.changeSelectedItem(val);
          },
          defaultSelectedIndex: model.selectedItem,
        ),
        body: model.pages[model.selectedItem],
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }

  GestureDetector buildCreateUsersDialog(BuildContext context, HomeViewModel model) {
    return GestureDetector(
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
                                              icon: Icon(Icons.close))
                                        ],
                                      ),
                                      verticalSpaceTiny,
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            24, 0, 24, 0),
                                        child: BoxButton(
                                          title: "NEW CUSTOMER",
                                          onTap: () {
                                            print("SACHI click");
                                            Navigator.of(context).pop();
                                            model.navigateToCreateCustomer();
                                          },
                                        ),
                                      ),
                                      verticalSpaceMedium,
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            24, 0, 24, 0),
                                        child: BoxButton(
                                          title: "NEW SUPPLIER",
                                          onTap: () {
                                            Navigator.of(context).pop();
                                            model.navigateToCreateSupplier();
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
                        );
  }
}
