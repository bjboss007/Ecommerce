import 'package:flutter/material.dart';
import 'package:toyoko/components/custom_suffix.dart';
import 'package:toyoko/components/default_button.dart';
import 'package:toyoko/components/form_error.dart';
import 'package:toyoko/screens/complete_profile/complete_profile.dart';

import '../../../contants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  SignUpForm({Key key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String email, password, comfirmPassword;
  List<String> errors = [];

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

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailField(),
          SizedBox(
            height: getProportionateHeight(30),
          ),
          buildPassField(),
          SizedBox(
            height: getProportionateHeight(30),
          ),
          buildComfirmPassField(),
          FormError(
            errors: errors,
          ),
          SizedBox(
            height: getProportionateHeight(30),
          ),
          DefaultButton(
            text: "Register",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                Navigator.pushNamed(context, CompleteProfile.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildComfirmPassField() {
    return TextFormField(
      obscureText: true,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        hintText: "Re-enter your password",
        labelText: "confirm password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffix(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
      onSaved: (newValue) => comfirmPassword = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(kPassNullError);
        } else if (value.length >= 8) {
          removeError(kShortPassError);
        } else if (value == password) {
          removeError(kMatchPassError);
        }
        comfirmPassword = value;
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(kPassNullError);
          return "";
        } else if ((password != value)) {
          addError(kMatchPassError);
          return "";
        }
        return null;
      },
    );
  }

  TextFormField buildPassField() {
    return TextFormField(
      obscureText: true,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        hintText: "password",
        labelText: "Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffix(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(kPassNullError);
        } else if (value.length >= 8) {
          removeError(kShortPassError);
        }
        password = value;
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(kShortPassError);
          return "";
        }
        return null;
      },
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(kInvalidEmailError);
        }
        comfirmPassword = value;
        return null;
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
