import 'package:flutter/cupertino.dart';

import '../../../contants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.imageUrl,
  }) : super(key: key);

  final String text, imageUrl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "TOKOYO",
          style: TextStyle(
              fontSize: getProportionateWidth(36),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          imageUrl,
          height: getProportionateHeight(256),
          width: getProportionateWidth(235),
        )
      ],
    );
  }
}
