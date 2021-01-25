import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../contants.dart';
import '../../../size_config.dart';


class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter(
      {Key key, @required this.icon, @required this.press, this.numOfItem})
      : super(key: key);

  final String icon;
  final Function press;
  final int numOfItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateHeight(12)),
            width: getProportionateWidth(46),
            height: getProportionateHeight(46),
            decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                shape: BoxShape.circle),
            child: SvgPicture.asset(icon),
          ),
          if (numOfItem != 0)
            Positioned(
              right: 5,
              child: Container(
                width: getProportionateHeight(16),
                height: getProportionateHeight(16),
                decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    border: Border.all(width: 1.5, color: Colors.white)),
                child: Center(
                  child: Text(
                    "$numOfItem",
                    style: TextStyle(
                        color: Colors.white,
                        height: 1,
                        fontSize: getProportionateWidth(10),
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
