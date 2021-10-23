import 'package:flutter/widgets.dart';
import 'package:flutter_playground/utils/SizeConfig.dart';

class PaddedPageContainer extends StatelessWidget {
  const PaddedPageContainer({Key key, @required this.child}) : super(key: key);

  final Widget child;

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 8),
      child: child,
    );
  }
}
