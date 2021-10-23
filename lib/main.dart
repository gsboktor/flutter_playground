import 'package:flutter/material.dart';
import 'package:flutter_playground/components/ActionButtonRow/ActionButtonRow.dart';
import 'package:flutter_playground/components/ContentCard/ContentCard.dart';
import 'package:flutter_playground/utils/SizeConfig.dart';
import 'components/PageBanner.dart';
import 'components/Templates/PaddedPageContainer.dart';

void main() {
  runApp(ExcerptApp());
}

class ExcerptApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Excerpt App',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: MyHomePage(title: "Excerpt App"));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: PaddedPageContainer(
            child: Column(
      children: [
        PageBanner(
          bannerText: "excerpt.",
        ),
        Padding(
          padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 2.5),
          child: ContentCard(),
        ),
        Padding(
          padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 3),
          child: ActionButtonRow(),
        ),
      ],
    )));
  }
}
