import 'package:fitness/screens/signin/sign_in_screen.dart';
import 'package:fitness/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/rounded_blend_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: TColor.white,
      body: SafeArea(
          child: Container(
        width: media.width,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              "assets/images/welcome_1.png",
              width: media.width * 0.75,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              height: media.width * 0.1,
            ),
            Text(
              "Welcome, Subarna ",
              style: TextStyle(
                  color: TColor.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "You are all set now. let's reach your \n goals together with us.",
              textAlign: TextAlign.center,
              style: TextStyle(color: TColor.gray, fontSize: 16),
            ),
            SizedBox(
              height: media.width * 0.05,
            ),
            const Spacer(),
            RoundedBlendButton(
                title: "Go to Home",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInScreen()));
                })
          ],
        ),
      )),
    );
  }
}
