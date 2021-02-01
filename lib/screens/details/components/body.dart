import 'package:flutter/material.dart';
import 'package:toyoko/components/default_button.dart';
import 'package:toyoko/models/Product.dart';
import 'package:toyoko/screens/details/components/top_rounded_container.dart';
import 'package:toyoko/size_config.dart';

import 'color_dot.dart';
import 'product_description.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  const Body({Key key, @required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * .15,
                            right: SizeConfig.screenWidth * .15,
                            top: getProportionateHeight(15),
                            bottom: getProportionateHeight(40),
                          ),
                          child: DefaultButton(text: "Add to Cart", press: (){},),
                        ),
                      )
                    ],
                  )
                ),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}

