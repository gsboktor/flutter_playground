import 'package:flutter/material.dart';
import 'package:flutter_playground/constants/styles/TextStyles.dart';
import 'package:flutter_playground/utils/SizeConfig.dart';

class Tag extends StatelessWidget {
  final double marginLeft;
  final double marginRight;
  final double marginTop;
  final double marginBottom;
  final String tagText;
  Tag(
      {Key key,
      this.marginLeft = 0,
      this.marginTop = 0,
      this.marginBottom = 0,
      this.marginRight = 0,
      @required this.tagText})
      : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.fromLTRB(marginLeft, marginTop, marginRight, marginBottom),
      // width: SizeConfig.safeBlockHorizontal * 15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey[350],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 3.0, 12.0, 3.0),
        child: Center(
          child: Text(
            tagText,
            style: TagTextStyle,
          ),
        ),
      ),
    );
  }
}
