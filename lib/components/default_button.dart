import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../contants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key, this.text, this.press,
  }) : super(key: key);

  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateHeight(56),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: press,
        color: kPrimaryColor,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: getProportionateWidth(18)),
        ),
      ),
    );
  }
}
