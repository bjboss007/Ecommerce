import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toyoko/models/Product.dart';

import '../../../contants.dart';
import '../../../size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product, @required this.pressSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(20)),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const SizedBox(height: 5),
        Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Container(
              // margin: ,
              padding: EdgeInsets.all(getProportionateWidth(15)),
              width: getProportionateWidth(64),

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  color: product.isFavourite
                      ? kPrimaryColor.withOpacity(.1)
                      : kSecondaryColor.withOpacity(.1)),
              child: SvgPicture.asset(
                "assets/icons/Heart Icon_2.svg",
                color:
                    product.isFavourite ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
              ),
            )),
        // const SizedBox(height : 5),
        Padding(
          padding: EdgeInsets.only(
              left: getProportionateWidth(20.0),
              right: getProportionateWidth(64)),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateWidth(20), vertical: 10),
          child: GestureDetector(
            onTap: pressSeeMore,
            child: Row(
              children: [
                Text(
                  "See more details",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: kPrimaryColor,
                  size: 12,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}