import 'package:flutter/material.dart';
import 'package:flutter_playground/components/Templates/GenericActionButton.dart';
import 'package:flutter_playground/utils/SizeConfig.dart';

class ActionButtonRow extends StatefulWidget {
  ActionButtonRow({Key key}) : super(key: key);
  _ActionButtonRowState createState() => _ActionButtonRowState();
  String testFunc() {
    print("HI");
  }
}

class _ActionButtonRowState extends State<ActionButtonRow> {
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GenericActionButton(
            image: AssetImage("assets/images/cancel_button.png"),
            width: SizeConfig.safeBlockHorizontal * 12,
            height: SizeConfig.safeBlockVertical * 12,
            onClick: () => {widget.testFunc()}),
        Container(width: SizeConfig.safeBlockHorizontal * 25),
        GenericActionButton(
            image: AssetImage("assets/images/checkmark.png"),
            width: SizeConfig.safeBlockHorizontal * 12,
            height: SizeConfig.safeBlockVertical * 12,
            onClick: () => {widget.testFunc()}),
      ],
    );
  }
}
