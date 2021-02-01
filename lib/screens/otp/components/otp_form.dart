import 'package:flutter/material.dart';
import 'package:toyoko/components/default_button.dart';

import '../../../contants.dart';
import '../../../size_config.dart';

class OtpForm extends StatefulWidget {
  OtpForm({Key key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode pin2focusForm;
  FocusNode pin3focusForm;
  FocusNode pin4focusForm;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin2focusForm = FocusNode();
    pin3focusForm = FocusNode();
    pin4focusForm = FocusNode();
  }

  @override
  void dispose() {
    pin2focusForm.dispose();
    pin3focusForm.dispose();
    pin4focusForm.dispose();
    super.dispose();
    // TODO: implement dispose
  }

  void nextField({String value, FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  void previousField({String value, FocusNode focusNode}) {
    if (value.length == 0) {
      if (!focusNode.hasFocus) {
        focusNode.requestFocus();
      }
      focusNode.focusInDirection(TraversalDirection.left);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getProportionateWidth(60),
                child: TextFormField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: otpDecorator,
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin2focusForm);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateWidth(60),
                child: TextFormField(
                  focusNode: pin2focusForm,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: otpDecorator,
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin3focusForm);
                    previousField(value: value, focusNode: pin2focusForm);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateWidth(60),
                child: TextFormField(
                  focusNode: pin3focusForm,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: otpDecorator,
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin4focusForm);
                    previousField(value: value, focusNode: pin3focusForm);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateWidth(60),
                child: TextFormField(
                  focusNode: pin4focusForm,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: otpDecorator,
                  onChanged: (value) {
                    pin4focusForm.unfocus();
                    previousField(value: value, focusNode: pin4focusForm);
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.15,
          ),
          Padding(
            padding:
            EdgeInsets.symmetric(horizontal: getProportionateHeight(50)),
            child: DefaultButton(
              text: "Continue",
              press: () {},
            ),
          )
        ],
      ),
    );
  }
}
