import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';

class CreateUsers extends StatelessWidget {
  const CreateUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      children: [
        Row(children: [
          IconButton(onPressed: (){
            Navigator.of(context).pop();
          }, icon: Icon(Icons.close),)
        ],),
        Padding(
          padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
          child: BoxButton(title: "NEW CUSTOMER", onTap: (){},),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
          child: BoxButton(title: "NEW SUPPLIER", onTap: (){},),
        )
      ],
    ),);
  }
}
