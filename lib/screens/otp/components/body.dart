import 'package:flutter/material.dart';
import 'package:toyoko/contants.dart';
import 'package:toyoko/size_config.dart';
import 'package:toyoko/theme.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              Text(
                "OTP Verification",
                style: headerStyle(),
              ),
              Text("We have sent your code to +1 2345 ****"),
              buildTimer(context),
              SizedBox(
                height: SizeConfig.screenHeight * 0.15,
              ),
              OtpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              GestureDetector(
                  onTap: () {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("Resending OTP ..."),
                    ));
                  },
                  child: Text(
                    "Resend OTP",
                    style: TextStyle(decoration: TextDecoration.underline),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("The code will expire in "),
        TweenAnimationBuilder(
          duration: Duration(seconds: 30),
          tween: Tween(begin: 30.0, end: 0),
          builder: (context, value, child) =>
              Text(
                "00:${value.toInt()}",
                style: TextStyle(color: kPrimaryColor),
              ),
          onEnd: () {
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text("OTP expired"),
            ));
          },
        )
      ],
    );
  }
}

