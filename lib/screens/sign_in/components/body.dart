import 'package:flutter/material.dart';

import 'package:toyoko/components/no_account_content.dart';
import 'package:toyoko/components/social_card_container.dart';
import 'package:toyoko/size_config.dart';

import 'sign_in_form.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateWidth(30),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sign in with your email and password \nor continue with social media",
                  style: TextStyle(),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                SigninForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                SocialCardContainer(),
                SizedBox(height: getProportionateHeight(20)),
                NoAccountContent(),
                // Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}




