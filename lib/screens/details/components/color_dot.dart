import 'package:flutter/material.dart';
import 'package:toyoko/components/rounded_icon_btn.dart';
import 'package:toyoko/models/Product.dart';

import '../../../contants.dart';
import '../../../size_config.dart';


class ColorDots extends StatelessWidget {
  const ColorDots({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;
  

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(20)),
      child: Column(
        children: [
          Row(
            children: [
              ...List.generate(product.colors.length,
                  (index) => ColorDot(color: product.colors[index], isSelected: selectedColor == index,)),
                  Spacer(),
              RoundedIconBtn(
                iconData: Icons.remove,
                press: () {
                  // setState(() {
                  //   items > 0 ? items-- : items = 0;
                  // });
                },
              ),
              const SizedBox(width: 15,),
              // Text("$items", style: TextStyle(fontSize: 24),),
              RoundedIconBtn(
                iconData: Icons.add,
                press: () {
                  // setState(() {
                  //   items++;
                  // });
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    @required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateHeight(8)),
      width: getProportionateWidth(40),
      height: getProportionateWidth(40),
      decoration: BoxDecoration(
        // color: widget.product.colors[0],
        shape: BoxShape.circle,
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
