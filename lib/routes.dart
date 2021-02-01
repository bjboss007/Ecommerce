
import 'package:flutter/widgets.dart';
import 'package:toyoko/screens/cart/cart_screen.dart';
import 'package:toyoko/screens/complete_profile/complete_profile.dart';
import 'package:toyoko/screens/details/details_screen.dart';
import 'package:toyoko/screens/forget_password/forget_password.dart';
import 'package:toyoko/screens/home/home_screen.dart';
import 'package:toyoko/screens/login_success/login_success_screen.dart';
import 'package:toyoko/screens/otp/otp_screen.dart';
import 'package:toyoko/screens/profile/profile_screen.dart';
import 'package:toyoko/screens/sign_in/sing_in_screen.dart';
import 'package:toyoko/screens/sign_up/sign_up_screen.dart';
import 'package:toyoko/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SigninScreen.routeName: (context)=> SigninScreen(),
  ForgotPasswordScreen.routeName : (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName :(context) => SignUpScreen(),
  LoginSuccessScreen.routeName : (context) => LoginSuccessScreen(),
  CompleteProfile.routeName : (context) => CompleteProfile(),
  OtpScreen.routeName : (context) => OtpScreen(),
  HomeScreen.routeName : (context) => HomeScreen(),
  DetailsScreen.routeName : (context) => DetailsScreen(),
  CartScreen.routeName : (context) => CartScreen(),
  ProfileScreen.routeName : (context) => ProfileScreen(),
};
