import 'package:flutter/material.dart';
import 'package:toyoko/components/custom_suffix.dart';
import 'package:toyoko/components/default_button.dart';
import 'package:toyoko/components/form_error.dart';

import '../../../contants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  CompleteProfileForm({Key key}) : super(key: key);

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String firstName, lastName, phoneNumber, address;
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

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameForm(),
          SizedBox(
            height: getProportionateHeight(30),
          ),
          buildLastNameForm(),
          SizedBox(
            height: getProportionateHeight(30),
          ),
          buildPhoneNumberForm(),
          SizedBox(
            height: getProportionateHeight(30),
          ),
          buildAddressForm(),
        
          FormError(
            errors: errors,
          ),
          SizedBox(
            height: getProportionateHeight(40),
          ),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildAddressForm() {
    return TextFormField(
      keyboardType: TextInputType.streetAddress,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: "Enter your address",
          labelText: "Address",
          suffixIcon: CustomSuffix(
            svgIcon: "assets/icons/Location point.svg",
          )),
      onSaved: (newValue) => lastName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty || value.trim().length > 0) {
          removeError(kAddressNullError);
          address = value;
        }
      },
      validator: (value) {
        if (value.isEmpty || value.trim().length == 0) {
          addError(kAddressNullError);
          return "";
        }
        return null;
      },
    );
  }

  TextFormField buildPhoneNumberForm() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: "Enter your phone number",
          labelText: "Phone Number",
          suffixIcon: CustomSuffix(
            svgIcon: "assets/icons/Phone.svg",
          )),
      onSaved: (newValue) => lastName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty || value.trim().length > 0) {
          removeError(kPhoneNumberNullError);
          lastName = value;
        } else if (value.length == 11) {
          addError("Enter a valid phone number");
        }
        phoneNumber = value;
      },
      validator: (value) {
        if (value.isEmpty || value.trim().length == 0) {
          addError(kPhoneNumberNullError);
          return "";
        } else if (value.length != 11) {
          addError("Enter a valid phone number");
        }
        return null;
      },
    );
  }

  TextFormField buildLastNameForm() {
    return TextFormField(
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: "Enter your last name",
          labelText: "Last Name",
          suffixIcon: CustomSuffix(
            svgIcon: "assets/icons/User Icon.svg",
          )),
      onSaved: (newValue) => lastName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty || value.trim().length > 0) {
          removeError(kNamelNullError);
          lastName = value;
        }
      },
      validator: (value) {
        if (value.isEmpty || value.trim().length == 0) {
          addError(kNamelNullError);
          return "";
        }
        return null;
      },
    );
  }

  TextFormField buildFirstNameForm() {
    return TextFormField(
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: "Enter your first name",
          labelText: "First Name",
          suffixIcon: CustomSuffix(
            svgIcon: "assets/icons/User Icon.svg",
          )),
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty || value.trim().length != 0) {
          removeError(kNamelNullError);
          firstName = value;
        }
      },
      validator: (value) {
        if (value.isEmpty || value.trim().length == 0) {
          addError(kNamelNullError);
          return "";
        }
        return null;
      },
    );
  }
}
