
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key key,
    this.svgIcon,
    this.press,
  }) : super(key: key);

  final String svgIcon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: getProportionateWidth(10)),
        padding: EdgeInsets.all(getProportionateWidth(8)),
        height: getProportionateHeight(40),
        width: getProportionateWidth(40),
        decoration:
            BoxDecoration(color: Color(0xFFF5F6F9), shape: BoxShape.circle),
        child: SvgPicture.asset(svgIcon),
      ),
    );
  }
}