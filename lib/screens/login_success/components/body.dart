import 'package:flutter/material.dart';
import 'package:toyoko/components/default_button.dart';
import 'package:toyoko/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(20)),
      child: Column(
        children : [
          SizedBox(height: SizeConfig.screenHeight * 0.04,),
          Image.asset("assets/images/success.png"),
          SizedBox(height: SizeConfig.screenHeight * 0.1,),
          Text("Login Success", style: TextStyle(color: Colors.black, fontSize: getProportionateWidth(30), fontWeight: FontWeight.bold),),
          // SizedBox(height: SizeConfig.screenHeight * 0.08,),
          Spacer(),
          SizedBox(width: SizeConfig.screenWidth * 0.6, child: DefaultButton(text: "Back to Home", press: (){},)),
          Spacer(),
        ]
      ),
    );
  }
}