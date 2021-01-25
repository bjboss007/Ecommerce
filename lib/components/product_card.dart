import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toyoko/models/Product.dart';

import '../contants.dart';
import '../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key key, this.width, this.aspectRatio, @required this.product, @required this.press})
      : super(key: key);

  final double width, aspectRatio;
  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateWidth(width),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(getProportionateWidth(20)),
                  decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(product.images[0]),
                ),
              ),
              SizedBox(
                height: getProportionateHeight(5),
              ),
              Text(
                demoProducts[0].title,
              ),
              Row(
                children: [
                  Text("\$${product.price}",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                  Spacer(),
                  GestureDetector(
                      onTap: () {},
                      child: Container(
                          padding: EdgeInsets.all(getProportionateWidth(6)),
                          width: getProportionateWidth(28),
                          height: getProportionateHeight(28),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: product.isFavourite
                                  ? kPrimaryColor.withOpacity(.1)
                                  : kSecondaryColor.withOpacity(.1)),
                          child: SvgPicture.asset(
                            "assets/icons/Heart Icon_2.svg",
                            color: product.isFavourite
                                ? Color(0xFFFF4848)
                                : Color(0xFFDBDEE4),
                          )))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
