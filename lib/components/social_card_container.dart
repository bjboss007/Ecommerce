import 'package:flutter/material.dart';
import 'social_card.dart';

class SocialCardContainer extends StatelessWidget {
  const SocialCardContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SocialCard(
        svgIcon: "assets/icons/google-icon.svg",
        press: () {},
      ),
      SocialCard(
        svgIcon: "assets/icons/facebook-2.svg",
        press: () {},
      ),
      SocialCard(
        svgIcon: "assets/icons/twitter.svg",
        press: () {},
      ),
    ]);
  }
}
