import 'package:fitness/common/widgets/rounded_blend_button.dart';
import 'package:fitness/screens/onboarding/onboarding_screen.dart';
import 'package:fitness/theme/colors.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  late bool isChangedColor = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: TColor.white,
      body: Container(
          width: media.width,
          decoration: BoxDecoration(
            gradient: isChangedColor == true
                ? null
                : LinearGradient(
                    colors: TColor.primaryG,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                "Fitness",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: TColor.black,
                    fontSize: 36),
              ),
              Text(
                "Everybody can train",
                style: TextStyle(color: TColor.gray, fontSize: 18),
              ),
              const Spacer(),
              SafeArea(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: RoundedBlendButton(
                  title: "Get Started",
                  type: isChangedColor == true
                      ? RoundedButtonType.bgGradient
                      : RoundedButtonType.textGradient,
                  onPressed: () {
                    if (isChangedColor) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OnboardingScreen()));
                    } else {
                      setState(() {
                        isChangedColor = true;
                      });
                    }
                  },
                ),
              )),
            ],
          )),
    );
  }
}
