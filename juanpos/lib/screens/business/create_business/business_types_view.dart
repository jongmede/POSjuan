import 'package:juanpos/screens/utils/colors.dart';
import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BusinessTypeView extends StatelessWidget {
  const BusinessTypeView({Key? key}) : super(key: key);

  final List<String> _listOfTypes = const [
    "RETAIL",
    "WHOLESALE",
    "TRADER",
    "SERVICE"
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pop();
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 4/3,
                  shrinkWrap: true,
                  children: [
                    ..._listOfTypes.map(
                      (e) => GestureDetector(
                        onTap: (){
                          Navigator.of(context).pop(e);
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all()
                            ) ,
                            child: Center(
                              child: Text(
                          e,

                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                                fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
