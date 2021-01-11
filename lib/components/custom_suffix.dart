import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class CustomSuffix extends StatelessWidget {
  const CustomSuffix({
    Key key, this.svgIcon,
  }) : super(key: key);
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, getProportionateWidth(20),
          getProportionateWidth(20), getProportionateWidth(20)),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateHeight(18),
      ),
    );
  }
}