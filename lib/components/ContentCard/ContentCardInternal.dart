import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_playground/components/Templates/GenericActionButton.dart';
import 'package:flutter_playground/components/Templates/Tag.dart';
import 'package:flutter_playground/utils/SizeConfig.dart';
import 'package:flutter_playground/constants/styles/TextStyles.dart';

class ContentCardInternal extends StatefulWidget {
  ContentCardInternal({Key key}) : super(key: key);
  _ContentCardInternalState createState() => _ContentCardInternalState();
}

class _ContentCardInternalState extends State<ContentCardInternal> {
  List<String> _bookmarkFiles = [
    "assets/images/bookmark_unchecked.png",
    "assets/images/bookmark_checked.png"
  ];

  bool checked = false;

  Widget UserHeadingDetails() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "gsBoktor123",
          style: UserHeaderTextStyle,
          textDirection: TextDirection.ltr,
        ),
        Text("Level 32",
            style: UserSubHeaderTextStyle, textDirection: TextDirection.ltr),
        Container(
          width: SizeConfig.safeBlockHorizontal * 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.grey, width: 1)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(6.0, 3.0, 6.0, 3.0),
            child: Center(
              child: Text(
                "Follow",
                style: FollowTextStyle,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget UserHeadingProfileImage() {
    return Container(
        width: SizeConfig.blockSizeHorizontal * 17,
        height: SizeConfig.blockSizeHorizontal * 17,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/woman.png')),
            color: Colors.grey,
            borderRadius: BorderRadius.circular(50)));
    // child: Image.asset("assets/images/woman.png"));
  }

  Widget ContentCardInternalUserHeading() {
    return Row(
      children: [
        UserHeadingProfileImage(),
        Padding(
            padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 3),
            child: UserHeadingDetails()),
      ],
    );
  }

  Widget ContentCardInternalTags() {
    return Padding(
      padding: EdgeInsets.only(top: 15, bottom: 15),
      child: Align(
        alignment: Alignment.centerLeft,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Tag(
                marginRight: 5,
                tagText: "Tag1",
              ),
              Tag(
                marginLeft: 5,
                marginRight: 5,
                tagText: "LongTag2",
              ),
              Tag(
                marginLeft: 5,
                marginRight: 5,
                tagText: "EvenLongerTag3",
              ),
              Tag(
                marginLeft: 5,
                tagText: "Tag4",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ContentCardSeparator() {
    return Container(
      width: SizeConfig.safeBlockHorizontal * 80,
      height: .5,
      decoration: BoxDecoration(color: Colors.grey[300]),
    );
  }

  Widget ContentCardMedia() {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        width: SizeConfig.safeBlockHorizontal * 80,
        height: SizeConfig.safeBlockVertical * 40.5,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Scrollbar(
            child: Text(
              "Now this is a story all about how my life flipped turned upside down and let me just give you a minute to sit right there and listen to belAirNow this is a story all about how my life flipped turned upside down and let me just give you a minute to sit right there and listen to belAirNow this is a story all about how my life flipped turned upside down and let me just give you a minute to sit right there and listen to belAirNow this is a story all about how my life flipped turned upside down and let me just give you a minute to sit right there and listen to belAirNow this is a story all about how my life flipped turned upside down and let me just give you a minute to sit right there and listen to belAirNow this is a story all about how my life flipped turned upside down and let me just give you a minute to sit right there and listen to belAirNow this is a story all about how my life flipped turned upside down and let me just give you a minute to sit right there and listen to belAirNow this is a story all about how my life flipped turned upside down and let me just give you a minute to sit right there and listen to belAirNow this is a story all about how my life flipped turned upside down and let me just give you a minute to sit right there and listen to belAirNow this is a story all about how my life flipped turned upside down and let me just give you a minute to sit right there and listen to belAirNow this is a story all about how my life flipped turned upside down and let me just give you a minute to sit right there and listen to belAirNow this is a story all about how my life flipped turned upside down and let me just give you a minute to sit right there and listen to belAirNow this is a story all about how my life flipped turned upside down and let me just give you a minute to sit right there and listen to belAirNow this is a story all about how my life flipped turned upside down and let me just give you a minute to sit right there and listen to belAirNow this is a story all about how my life flipped turned upside down and let me just give you a minute to sit right there and listen to belAirNow this is a story all about how my life flipped turned upside down and let me just give you a minute to sit right there and listen to belAirNow this is a story all about how my life flipped turned upside down and let me just give you a minute to sit right there and listen to belAirNow this is a story all about how my life flipped turned upside down and let me just give you a minute to sit right there and listen to belAirNow this is a story all about how my life flipped turned upside down and let me just give you a minute to sit right there and listen to belAir",
              style: MainTextStyle,
            ),
          ),
        ),
      ),
    );
  }

  Widget ContentCardFooter() {
    return Padding(
      padding: const EdgeInsets.only(top: 13.0),
      child: Container(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "G.S.Boktor",
                  style: UserSignatureTextStyle,
                ),
                Text(
                  "06/07/21",
                  style: UserDateTextStyle,
                )
              ],
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GenericActionButton(
                    marginRight: 1.5,
                    image: AssetImage(
                        checked ? _bookmarkFiles[0] : _bookmarkFiles[1]),
                    onClick: () => setState(() => checked = !checked),
                    height: 20,
                    width: 20,
                  ),
                  GenericActionButton(
                    marginLeft: 7.5,
                    marginRight: 1.5,
                    image: AssetImage("assets/images/applause_unchecked.png"),
                    onClick: () {},
                    height: 20,
                    width: 20,
                  ),
                  Text(
                    "1.1k",
                    style: UserLikesTextStyle,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.safeBlockVertical * 3.5),
      child: Column(
        children: [
          ContentCardInternalUserHeading(),
          ContentCardInternalTags(),
          ContentCardSeparator(),
          ContentCardMedia(),
          ContentCardFooter(),
        ],
      ),
    );
  }
}
