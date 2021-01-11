import 'package:flutter/material.dart';
import '../sign_in/components/body.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({Key key}) : super(key: key);
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset : false,
      appBar: AppBar(
         centerTitle: true,
         title: Text("Sign in"),
       ),
      body: Body(),
    );
  }
}
