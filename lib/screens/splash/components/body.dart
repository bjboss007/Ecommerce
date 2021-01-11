import 'package:flutter/material.dart';

import 'package:toyoko/components/default_button.dart';
import 'package:toyoko/contants.dart';
import 'package:toyoko/screens/sign_in/sing_in_screen.dart';
import 'package:toyoko/size_config.dart';

import 'splash_content.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "imageUrl": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "imageUrl": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "imageUrl": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, int index) {
                      return SplashContent(
                        text: splashData[index]["text"],
                        imageUrl: splashData[index]["imageUrl"],
                      );
                    })),
            Expanded(
              flex: 2,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: getProportionateWidth(20)),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(splashData.length,
                            (index) => buildDot(index: index))),
                    Spacer(
                      flex: 3,
                    ),
                    DefaultButton(text : "Continue", press: (){
                      Navigator.pushNamed(context, SigninScreen.routeName);
                    },),
                    Spacer()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) => AnimatedContainer(
        duration: kAnimationDuration,
        margin: EdgeInsets.only(right: 5),
        height: 6,
        width: currentPage == index ? 20 : 6,
        decoration: BoxDecoration(
            color: currentPage == index ? kPrimaryColor : Colors.black12,
            borderRadius: BorderRadius.circular(3)),
      );
}

