import 'package:flutter/material.dart';
import 'package:toyoko/components/social_card_container.dart';
import 'package:toyoko/screens/sign_up/components/sign_up_form.dart';
import 'package:toyoko/size_config.dart';

import '../../../theme.dart';

class Body extends StatelessWidget {
  Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(20)),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.01,
              ),
              Text(
                "Register Account",
                style: headerStyle(),
              ),
              Text("Complete your details or continue \nwith social media",
                  textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.07,
              ),
              SignUpForm(),
              SizedBox(height: getProportionateHeight(20)),
              SocialCardContainer(),
              SizedBox(height: getProportionateHeight(20)),
              Text("By continuing you confirm you agree \n by the terms and conditions", textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    );
  }
}

