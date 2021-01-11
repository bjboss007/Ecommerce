import 'package:flutter/material.dart';
import 'package:toyoko/size_config.dart';
import '../splash/components/body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);
  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
