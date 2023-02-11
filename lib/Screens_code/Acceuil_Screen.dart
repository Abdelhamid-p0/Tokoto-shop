import 'dart:html';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AccScreen extends StatefulWidget {
  const AccScreen({super.key});

  @override
  State<AccScreen> createState() => _AccScreenState();
}

class _AccScreenState extends State<AccScreen> {
  int activeIndex = 0;
  final imgs_sld = [
    "Assets/Images/Icons/splash_1.png",
    "Assets/Images/Icons/splash_2.png",
    "Assets/Images/Icons/splash_3.png"
  ];
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(5),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(children: [
              SizedBox(
                height: 50,
              ),
              Text("TOKOTO",
                  style: TextStyle(
                    color: Color(0xffffa825d),
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Rubik",
                  )),
              SizedBox(
                height: 18,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'Welcome to ',
                  style: TextStyle(
                    color: Color(0xfffffbebebe),
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "Tokoto. ",
                  style: TextStyle(
                    color: Color(0xfff9a9a9a),
                    fontWeight: FontWeight.w800,
                    fontFamily: "Rubik",
                  ),
                ),
                Text(
                  "Let's shop!",
                  style: TextStyle(
                    color: Color(0xfffbebebe),
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ]),
              SizedBox(
                height: 50,
              ),
              Container(
                child: CarouselSlider.builder(
                    carouselController: _controller,
                    itemCount: imgs_sld.length,
                    itemBuilder: (context, index, realIndex) {
                      final urlImage = imgs_sld[index];
                      return buildImage(urlImage, index);
                    },
                    options: CarouselOptions(
                      height: 250,
                      onPageChanged: (index, reason) =>
                          setState(() => activeIndex = index),
                    )),
              ),
              SizedBox(
                height: 40,
              ),
              buildIndicator(),
              SizedBox(
                height: 60,
              ),
              TextButton(
                  onPressed: () {
                    if (activeIndex == 2) {
                      Navigator.pushNamed(context, "/signin");
                    } else {
                      _controller.nextPage();
                    }
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      fontFamily: "Rubik",
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFFF77547),
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 22,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )),
            ]),
          ),
        )));
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
      count: imgs_sld.length,
      activeIndex: activeIndex,
      effect: ExpandingDotsEffect(
        dotWidth: 6,
        dotHeight: 5,
        activeDotColor: Color(0xfffff6784d),
      ));
  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Image.asset(urlImage, fit: BoxFit.contain),
      );
}
