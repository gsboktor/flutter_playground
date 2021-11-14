import 'package:flutter/material.dart';
import 'package:flutter_playground/components/ContentCard/ContentCardInternal.dart';
import 'package:flutter_playground/constants/styles/TextStyles.dart';
import 'package:flutter_playground/utils/SizeConfig.dart';
import 'package:swipeable/swipeable.dart';

class ContentCard extends StatefulWidget {
  ContentCard({Key key}) : super(key: key);
  _ContentCardState createState() => _ContentCardState();
}

class _ContentCardState extends State<ContentCard> {
  Widget build(BuildContext context) {
    return Swipeable(
      background: Container(),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(18.0)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[300], spreadRadius: 4, blurRadius: 6)
              ]),
          width: double.infinity,
          height: SizeConfig.blockSizeVertical * 135,
          child: Container(
            child: Center(
                //TODO: Replace generic Text Widget with a new Custom Stateful Widget called "ContentCardInternal".
                child: ContentCardInternal()),
          )),
    );
  }
}
