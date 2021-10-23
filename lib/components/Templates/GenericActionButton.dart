import 'package:flutter/material.dart';

class GenericActionButton extends StatefulWidget {
  GenericActionButton(
      {Key key,
      @required this.image,
      this.width = 10.0,
      this.height = 10.0,
      @required this.onClick})
      : super(key: key);
  final AssetImage image;
  final double width;
  final double height;
  final Function onClick;

  _GenericActionButtonState createState() => _GenericActionButtonState();
}

class _GenericActionButtonState extends State<GenericActionButton> {
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: IconButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        padding: EdgeInsets.all(0),
        icon: Image(image: widget.image),
        onPressed: () => {setState(widget.onClick)},
      ),
    );
  }
}
