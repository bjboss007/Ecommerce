import 'package:flutter/material.dart';
import 'package:toyoko/screens/sign_up/sign_up_screen.dart';

import '../contants.dart';
import '../size_config.dart';

class NoAccountContent extends StatelessWidget {
  const NoAccountContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: TextStyle(fontSize: getProportionateWidth(16)),
        ),
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, SignUpScreen.routeName);
            },
            child: Text(
              "Sign Up",
              style: TextStyle(
                  fontSize: getProportionateWidth(16), color: kPrimaryColor),
            ))
      ],
    );
  }
}
