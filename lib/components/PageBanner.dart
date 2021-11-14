import 'package:flutter/material.dart';
import 'package:flutter_playground/constants/styles/TextStyles.dart';
import 'package:flutter_playground/utils/SizeConfig.dart';

class PageBanner extends StatefulWidget {
  PageBanner({Key key, @required this.bannerText}) : super(key: key);
  _PageBannerState createState() => _PageBannerState();
  final String bannerText;
}

class _PageBannerState extends State<PageBanner> {
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.blockSizeVertical * 15,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(widget.bannerText, style: HeaderTextStyle),
        ],
      ),
    );
  }
}
