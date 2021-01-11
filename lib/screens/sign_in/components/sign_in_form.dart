import 'package:flutter/material.dart';
import 'package:toyoko/components/custom_suffix.dart';
import 'package:toyoko/components/default_button.dart';
import 'package:toyoko/components/form_error.dart';
import 'package:toyoko/screens/forget_password/forget_password.dart';
import 'package:toyoko/screens/login_success/login_success_screen.dart';

import '../../../contants.dart';
import '../../../size_config.dart';

class SigninForm extends StatefulWidget {
  SigninForm({Key key}) : super(key: key);

  @override
  _SigninFormState createState() => _SigninFormState();
}

class _SigninFormState extends State<SigninForm> {
  bool visible = false;
  final _formkey = GlobalKey<FormState>();
  String email;
  String password;
  bool rememberMe = false;
  final List<String> errors = [];

  void addError(String error) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError(String error) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateHeight(20),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateHeight(20),
          ),
          FormError(errors: errors),
          Row(
            children: [
              Checkbox(
                value: rememberMe,
                checkColor: Colors.white,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    rememberMe = value;
                  });
                },
              ),
              Text("Remember me."),
              Spacer(),
              TextButton(
                child: Text(
                  "Forgot password?",
                  style: TextStyle(color: kPrimaryColor),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
                },
              )
            ],
          ),
          SizedBox(
            height: getProportionateHeight(20),
          ),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formkey.currentState.validate()) {
                _formkey.currentState.save();
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          ),
          SizedBox(
            height: getProportionateHeight(20),
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: visible ? false : true,
      obscuringCharacter: "*",
      onSaved: (value) => password = value,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        }
      },
      validator: (value) {
        if (value.isEmpty) {
          
          addError(kPassNullError);
         
        }
        return null;
      },
      decoration: InputDecoration(
          hintText: "Enter your password",
          labelText: "Password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  if (!visible) {
                    visible = true;
                  } else {
                    visible = false;
                  }
                });
              },
              child: visible
                  ? Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateWidth(20)),
                      child: Icon(Icons.visibility),
                    )
                  : Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateWidth(20)),
                      child: Icon(Icons.visibility_off),
                    ))),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(kInvalidEmailError);
        }
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffix(
          svgIcon: "assets/icons/Mail.svg",
        ),
        // suffixIcon: Icon(Icons.lock),
      ),
    );
  }
}
