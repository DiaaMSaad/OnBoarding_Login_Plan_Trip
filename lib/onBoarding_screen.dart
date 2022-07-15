// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:onboarding_login/constant/colors_const.dart';
import 'package:onboarding_login/login_screen.dart';
import 'package:onboarding_login/onBoarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _pageController = PageController();

  List<onBoardingModel> boarding = [
    onBoardingModel(
        image: "assets/1.png",
        title: "Plan a trip",
        subTitle:
            "Easily you can select the date and also we can help you by suggesting you to set a good schedule"),
    onBoardingModel(
        image: "assets/2.png",
        title: "Book a flight",
        subTitle: "Found the flight that matches your destanition and scedule"),
    onBoardingModel(
        image: "assets/3.png",
        title: "Enjoy Your Trip",
        subTitle:
            "Easy discovering new places and share these between your friends and travel together"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: PageView.builder(
                  itemBuilder: ((context, index) => buildBoardingItem(
                        boarding[index],
                      )),
                  itemCount: boarding.length,
                  controller: _pageController,
                  physics: const BouncingScrollPhysics(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: boarding.length,
                    effect: WormEffect(
                        dotWidth: 20,
                        dotHeight: 10,
                        dotColor: Colors.red,
                        activeDotColor: Color.fromARGB(255, 248, 133, 133)),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          color: ksecondColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildBoardingItem(onBoardingModel model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Expanded(
        child: Image(
          image: AssetImage(model.image),
        ),
      ),
      const SizedBox(
        height: 10.0,
      ),
      Text(
        model.title,
        textAlign: TextAlign.center,
        style: const TextStyle(
            color: ksecondColor,
            fontWeight: FontWeight.bold,
            fontSize: 40.0,
            fontStyle: FontStyle.italic),
      ),
      const SizedBox(
        height: 16.0,
      ),
      Text(
        model.subTitle,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: ksecondColor,
          fontWeight: FontWeight.bold,
          fontSize: 15.0,
        ),
      )
    ],
  );
}
