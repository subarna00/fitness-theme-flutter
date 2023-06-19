import 'package:fitness/screens/signup/signup.dart';
import 'package:fitness/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/round_inputfield.dart';
import '../../common/widgets/rounded_blend_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool passwordVisible = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: media.width * 0.04,
            ),
            Text(
              "Hey There,",
              style: TextStyle(color: TColor.gray, fontSize: 16),
            ),
            Text(
              "Welcome Back",
              style: TextStyle(
                  color: TColor.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: media.width * 0.05,
            ),
            RoundTextInputField(
              hintText: "Email",
              icon: "assets/images/Message.png",
              keyboardType: TextInputType.emailAddress,
              margin: EdgeInsets.only(top: media.width * 0.04),
            ),
            RoundTextInputField(
              hintText: "Password",
              icon: "assets/images/Lock.png",
              margin: EdgeInsets.only(top: media.width * 0.04),
              obsecureText: !passwordVisible,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
                icon: Icon(
                  passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: TColor.gray,
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot your Password?",
                  style: TextStyle(
                      color: TColor.gray, decoration: TextDecoration.underline),
                )),
            const Spacer(),
            RoundedBlendButton(
                title: "Sign In",
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) =>
                  //             const CompeleteProfileScreen()));
                }),
            SizedBox(
              height: media.width * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    decoration:
                        BoxDecoration(color: TColor.gray.withOpacity(0.5)),
                  ),
                ),
                Text(
                  " OR ",
                  style: TextStyle(color: TColor.black, fontSize: 12),
                ),
                Expanded(
                  child: Container(
                    height: 1,
                    decoration:
                        BoxDecoration(color: TColor.gray.withOpacity(0.5)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: media.width * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: TColor.white,
                      border: Border.all(
                        width: 1,
                        color: TColor.gray.withOpacity(0.5),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      "assets/images/google.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
                SizedBox(
                  width: media.width * 0.05,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: TColor.white,
                      border: Border.all(
                        width: 1,
                        color: TColor.gray.withOpacity(0.5),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      "assets/images/facebook.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                )
              ],
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupScreen()));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Don't have an account yet? ",
                      style: TextStyle(
                          color: TColor.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Register",
                      style: TextStyle(
                          color: TColor.primaryColor1,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                )),
            SizedBox(
              height: media.width * 0.04,
            ),
          ],
        ),
      )),
    );
  }
}
