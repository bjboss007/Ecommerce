import 'package:flutter/material.dart';

import '../size_config.dart'; 

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key key, @required this.iconData, @required this.press,
  }) : super(key: key);

  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateWidth(40),
      height: getProportionateWidth(40),
      child: FlatButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed:  press,
        child: Icon(iconData),
        color: Colors.white,
      ),
    );
  }
}