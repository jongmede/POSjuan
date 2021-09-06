import 'package:juanpos/screens/widgets/custom_navigation_bar.dart';
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
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) =>
                          buildCreateUsersDialog(context, model));
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
        drawer: buildDrawer(model),
        body: model.isBusy
            ? Center(
                child: CircularProgressIndicator(),
              )
            : model.pages[model.selectedItem],
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }

  Drawer buildDrawer(HomeViewModel model) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            verticalSpaceMedium,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Text(
                    "B",
                    style: GoogleFonts.roboto(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  minRadius: 30,
                  maxRadius: 40,
                )
              ],
            ),
            verticalSpaceTiny,
            Text(
              "Business Name",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: kcPrimaryColor),
            ),
            verticalSpaceTiny,
            Text(
              "Full Name" + " (Owner)",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: kcPrimaryColor),
            ),
            verticalSpaceMedium,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {},
                    child: Text(
                      "EDIT BUSINESS",
                      style: GoogleFonts.roboto(
                          color: kcPrimaryColor, fontWeight: FontWeight.w500),
                    )),
                GestureDetector(
                    onTap: () {},
                    child: Text(
                      "EDIT PROFILE",
                      style: GoogleFonts.roboto(
                          color: kcPrimaryColor, fontWeight: FontWeight.w500),
                    )),
              ],
            ),
            verticalSpaceTiny,
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            verticalSpaceTiny,
            Text(
              "MANAGEMENT",
              style: GoogleFonts.roboto(
                  color: kcPrimaryColor, fontWeight: FontWeight.w500),
            ),
            verticalSpaceTiny,
            buildDrawerButton(
                "asset/images/receipt.png", "RECEIPT", () => null),
            buildDrawerButton("asset/images/inventory.png",
                "INVENTORY MANAGEMENT", () => null),
            buildDrawerButton("asset/images/ALL CUSTOMER.png",
                "CUSTOMER MANAGEMENT", () => null),
            buildDrawerButton("asset/images/TRANSACTION.png",
                "TRANSACTION REPORT", () => null),
            verticalSpaceMedium,
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            verticalSpaceTiny,
            Text(
              "SETTINGS",
              style: GoogleFonts.roboto(
                  color: kcPrimaryColor, fontWeight: FontWeight.w500),
            ),
            verticalSpaceTiny,
            buildDrawerButton(
                "asset/images/imgpsh_fullsize_anim.png", "BUSINESS LIST", () => model.navigateToBusinessList()),
            buildDrawerButton(
                "asset/images/SETTINGS.png", "GENERAL SETTINGS", () => null),
            buildDrawerButton(
                "asset/images/LOGOUT.png", "LOG OUT", () => model.logOut()),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerButton(String image, String text, Function() press) =>
      GestureDetector(
        onTap: press,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(image),
              horizontalSpaceTiny,
              Text(
                text,
                style: GoogleFonts.roboto(
                    color: kcPrimaryColor, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      );

  GestureDetector buildCreateUsersDialog(
      BuildContext context, HomeViewModel model) {
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
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                    child: BoxButton.outline(
                      title: "NEW CUSTOMER",
                      color: Colors.black,
                      onTap: () {
                        print("click");
                        Navigator.of(context).pop();
                        model.navigateToCreateCustomer();
                      },
                    ),
                  ),
                  verticalSpaceMedium,
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                    child: BoxButton.outline(
                      title: "NEW SUPPLIER",
                      color: Colors.black,
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
