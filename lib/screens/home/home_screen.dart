import 'package:flutter/material.dart';
import 'package:toyoko/enums.dart';
import 'package:toyoko/screens/profile/components/custom_navigation.dart';

import 'components/body.dart';


class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomNavigation(seletedMenu: MenuState.home,),
    );
  }
}
