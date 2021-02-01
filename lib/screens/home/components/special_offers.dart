import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'section_title.dart';
import 'special_offer_card.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Special for you",
          press: () {},
        ),
        SizedBox(
          height: getProportionateHeight(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                imageUrl: "assets/images/Image Banner 2.png",
                category: "Smartphones",
                numBrands: 18,
                press: () {},
              ),
              SpecialOfferCard(
                imageUrl: "assets/images/Image Banner 3.png",
                category: "Fashion",
                numBrands: 24,
                press: () {},
              ),
              SizedBox(width: getProportionateWidth(20),)
            ],
          ),
        ),
      ],
    );
  }
}

