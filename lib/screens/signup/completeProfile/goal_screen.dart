import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness/common/widgets/rounded_blend_button.dart';
import 'package:fitness/theme/colors.dart';
import 'package:flutter/material.dart';

class GoalScreen extends StatefulWidget {
  const GoalScreen({super.key});

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: media.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: media.width * 0.05,
                ),
                Text(
                  "What is your goal ?",
                  style: TextStyle(
                      color: TColor.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "It will help us to choose the best \n  program for you",
                  style: TextStyle(
                    color: TColor.gray,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                // SizedBox(
                //   height: media.width * 0.07,
                // ),
                const Spacer(),
                CarouselSlider(
                    carouselController: carouselController,
                    items: [
                      "assets/images/goal_1.png",
                      "assets/images/goal_2.png",
                      "assets/images/goal_3.png"
                    ]
                        .map((e) => Container(
                              padding: EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: LinearGradient(
                                      colors: TColor.primaryG,
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight)),
                              child: Column(
                                children: [
                                  const Spacer(),
                                  Image.asset(
                                    e,
                                    width: media.width * 0.6,
                                    fit: BoxFit.contain,
                                  ),
                                  const Spacer(),
                                  Text(
                                    "What is your goal ?",
                                    style: TextStyle(
                                        color: TColor.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 2, bottom: 8),
                                    color: TColor.white,
                                    width: media.width * 0.2,
                                    height: 1,
                                  ),
                                  Text(
                                    "It will help us to choose the best \n  program for you",
                                    style: TextStyle(
                                      color: TColor.lightGray,
                                      fontSize: 12,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                    options: CarouselOptions(
                        autoPlay: false,
                        enlargeCenterPage: true,
                        viewportFraction: 0.75,
                        aspectRatio: 0.7,
                        initialPage: 1)),
                const Spacer(),
                SizedBox(
                  height: media.width * 0.05,
                ),
                RoundedBlendButton(title: "Confirm", onPressed: () {})
              ],
            ),
          )
        ],
      )),
    );
  }
}
