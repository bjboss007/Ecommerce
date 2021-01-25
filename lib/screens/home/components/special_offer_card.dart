import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key key,
    @required this.imageUrl, 
    @required this.category, 
    @required this.numBrands, 
    @required this.press,
    
  }) : super(key: key);

  final String imageUrl, category;
  final int numBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateWidth(20)),
      child: SizedBox(
        width: getProportionateWidth(242),
        height: getProportionateWidth(100),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  "$imageUrl",
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Color(0xFF3434343).withOpacity(.4),
                        Color(0xFF3434343).withOpacity(.15),
                      ])),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateWidth(15),
                      vertical: getProportionateHeight(10)),
                  child: Text.rich(TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                            text: "$category\n",
                            style: TextStyle(
                              fontSize: getProportionateWidth(18),
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(text: "$numBrands Brands")
                      ])),
                )
              ],
            )),
      ),
    );
  }
}
