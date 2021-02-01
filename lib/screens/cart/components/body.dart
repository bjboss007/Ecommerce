import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toyoko/models/Cart.dart';
import 'package:toyoko/size_config.dart';

import 'cart_item_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(20)),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => Padding(
          padding:
              EdgeInsets.symmetric(vertical: getProportionateHeight(10)),
          child: Dismissible(
              key: Key(demoCarts[0].product.id.toString()),
              direction: DismissDirection.endToStart,
              onDismissed: (direction) {
                setState(() {
                  demoCarts.removeAt(index);
                });
              },
              background: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFFFE6E6),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(right : 20),
                  child: Row(
                    children: [
                      Spacer(),
                      SvgPicture.asset("assets/icons/Trash.svg"),
                    ],
                  ),
                ),
              ),
              child: CartItemCard(
                cart: demoCarts[index],
              )),
        )),
    );
  }
}
