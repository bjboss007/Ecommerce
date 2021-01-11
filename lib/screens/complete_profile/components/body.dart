import 'package:flutter/material.dart';
import 'package:toyoko/screens/complete_profile/components/complete_profile_form.dart';
import 'package:toyoko/size_config.dart';
import 'package:toyoko/theme.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: getProportionateWidth(20)),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.01,),
                Text(
                  "Complete Profile ",
                  style: headerStyle(),
                ),
                Text(
                  "Complete your profile or continue\n  with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.04,),
                CompleteProfileForm(),
                SizedBox(height: getProportionateHeight(20)),
              Text("By continuing you confirm you agree \n by the terms and conditions", textAlign: TextAlign.center,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

