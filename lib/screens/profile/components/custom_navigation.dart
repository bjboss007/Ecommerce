import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toyoko/screens/home/home_screen.dart';
import 'package:toyoko/screens/profile/profile_screen.dart';

import '../../../contants.dart';
import '../../../enums.dart';


class CustomNavigation extends StatelessWidget {
  const CustomNavigation({
    Key key,
    @required this.seletedMenu,
  }) : super(key: key);

  final MenuState seletedMenu;
  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              color: Color(0xFFFDADADA),
              blurRadius: 20),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
              icon: SvgPicture.asset("assets/icons/Shop Icon.svg", 
              color: MenuState.home==seletedMenu
              ? kPrimaryColor
              : inActiveIconColor
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/Heart Icon.svg",
              color: MenuState.favourite==seletedMenu
              ? kPrimaryColor
              : inActiveIconColor
              ),
            ),

            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg",
                color: MenuState.message==seletedMenu
              ? kPrimaryColor
              : inActiveIconColor
              ),
            ),
            IconButton(
              onPressed: () => Navigator.pushNamed(context, ProfileScreen.routeName),
              icon: SvgPicture.asset("assets/icons/User.svg",
              color: MenuState.profile==seletedMenu
              ? kPrimaryColor
              : inActiveIconColor
              ),
            ),
          ],
        ),
      ),
    );
  }
}
