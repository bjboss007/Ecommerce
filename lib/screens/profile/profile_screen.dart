import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toyoko/enums.dart';

import 'components/body.dart';
import 'components/custom_navigation.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomNavigation(
        seletedMenu: MenuState.profile,
      ),
    );
  }
}

