import 'package:flutter/material.dart';
import 'package:toyoko/screens/otp/components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title : Text("OTP Verification"),
      ),
      body: Body(),
    );
  }
}
