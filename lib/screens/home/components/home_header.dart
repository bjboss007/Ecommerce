import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toyoko/models/Cart.dart';
import 'package:toyoko/screens/cart/cart_screen.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            icon: "assets/icons/Cart Icon.svg",
            press: () =>
              Navigator.pushNamed(context, CartScreen.routeName),
            
            numOfItem: demoCarts.length,
          ),
          IconBtnWithCounter(
            icon: "assets/icons/Bell.svg",
            press: () {},
            numOfItem: 5,
          ),
        ],
      ),
    );
  }
}
