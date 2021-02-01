import 'package:flutter/material.dart';
import 'package:toyoko/models/Cart.dart';

import '../../../contants.dart';
import '../../../size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key key, this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateWidth(88),
          child: AspectRatio(
            aspectRatio: .88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateWidth(20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: TextStyle(fontSize: 16, color: Colors.black),
              maxLines: 2,
            ),
            const SizedBox(height: 5,),
            Text.rich(
              TextSpan(
                  text: "${cart.product.price}",
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.w600),
                  children: [
                    TextSpan(
                        text: " x ${demoCarts[0].numOfItems}",
                        style: TextStyle(color: kTextColor))
                  ]),
            ),
          ],
        )
      ],
    );
  }
}
