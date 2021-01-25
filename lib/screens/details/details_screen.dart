import 'package:flutter/material.dart';
import 'package:toyoko/models/Product.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArgument argument =
      ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(rating: argument.product.rating),
      body: Body(product: argument.product,),
    );
  }
}



class ProductDetailsArgument {
  final Product product;

  ProductDetailsArgument({@required this.product});
}
