import 'package:flutter/material.dart';

import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateWidth(20),
        vertical: getProportionateHeight(15)
      ),
      margin: EdgeInsets.symmetric(horizontal: getProportionateWidth(20)),
      width: double.infinity,
      // height: 90,
      decoration: BoxDecoration(
        color : Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Text.rich(
        TextSpan(
          text: "A summer surprise \n",
          style: TextStyle(
            color: Colors.white,
          ),
          children: [
            TextSpan(text : "Cashback 20%", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
          ]
        )
      ),
    );
  }
}
