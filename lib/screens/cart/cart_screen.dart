import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toyoko/components/default_button.dart';
import 'package:toyoko/contants.dart';
import 'package:toyoko/models/Cart.dart';
import 'package:toyoko/size_config.dart';

import 'components/body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Column(
            children: [
              Text(
                "Your Cart",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                "${demoCarts.length} items",
                style: Theme.of(context).textTheme.caption,
              )
            ],
          )),
      body: Body(),
      bottomNavigationBar: CheckOutCard(),
    );
  }
}

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateWidth(15),
          horizontal: getProportionateWidth(30)),
      height: 174,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFFDADADA).withOpacity(0.15)),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: getProportionateWidth(40),
                  height: getProportionateWidth(40),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/receipt.svg",
                  ),
                ),
                Spacer(),
                Text("Add voucher code "),
                const SizedBox(
                  width: 5,
                ),
                Icon(Icons.arrow_forward, size: 12, color: kTextColor)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(TextSpan(text: "Total:\n", children: [
                  TextSpan(
                    text: "\$5000",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )
                ])),
                SizedBox(
                    width: getProportionateWidth(190),
                    child: DefaultButton(
                      text: "Check Out",
                      press: () {},
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
