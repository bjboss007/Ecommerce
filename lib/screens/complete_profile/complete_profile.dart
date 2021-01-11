import 'package:flutter/material.dart';
import 'package:toyoko/screens/complete_profile/components/body.dart';

class CompleteProfile extends StatelessWidget {
  static String routeName = "/complete_profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Complete Profile",
        ),
      ),
      body: Body(),
    );
  }
}
