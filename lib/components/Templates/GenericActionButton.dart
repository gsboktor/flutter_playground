import 'package:flutter/material.dart';

class GenericActionButton extends StatefulWidget {
  GenericActionButton(
      {Key key,
      @required this.image,
      this.width = 10.0,
      this.height = 10.0,
      this.marginLeft = 0,
      this.marginTop = 0,
      this.marginBottom = 0,
      this.marginRight = 0,
      @required this.onClick})
      : super(key: key);
  final AssetImage image;
  final double width;
  final double height;
  final Function onClick;

  final double marginLeft;
  final double marginTop;
  final double marginRight;
  final double marginBottom;

  _GenericActionButtonState createState() => _GenericActionButtonState();
}

class _GenericActionButtonState extends State<GenericActionButton> {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(widget.marginLeft, widget.marginTop,
          widget.marginRight, widget.marginBottom),
      width: widget.width,
      height: widget.height,
      child: IconButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        padding: EdgeInsets.all(0),
        icon: Image(image: widget.image),
        onPressed: widget.onClick,
      ),
    );
  }
}
