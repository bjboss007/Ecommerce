import 'package:flutter/material.dart';
import 'package:toyoko/screens/home/components/popular_products.dart';
import '../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'special_offers.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: getProportionateHeight(20),
        ),
        HomeHeader(),
        SizedBox(
          height: getProportionateHeight(30),
        ),
        DiscountBanner(),
        SizedBox(
          height: getProportionateHeight(30),
        ),
        Categories(),
        SizedBox(
          height: getProportionateHeight(30),
        ),
        SpecialOffers(),
        SizedBox(
          height: getProportionateHeight(30),
        ),
        
        PopularProducts(),
        SizedBox(
          height: getProportionateHeight(30),
        ),
      ]),
    ));
  }
}


