import 'package:fitness/common/widgets/round_inputfield.dart';
import 'package:fitness/common/widgets/rounded_blend_button.dart';
import 'package:fitness/theme/colors.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isChecked = false;
  bool passwordVisible = false;

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
              "Create Account",
              style: TextStyle(
                  color: TColor.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: media.width * 0.05,
            ),
            const RoundTextInputField(
              hintText: "First Name",
              icon: "assets/images/Profile.png",
            ),
            RoundTextInputField(
              hintText: "Last Name",
              icon: "assets/images/Profile.png",
              margin: EdgeInsets.only(top: media.width * 0.04),
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
            SizedBox(
              height: media.width * 0.04,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  icon: Icon(isChecked
                      ? Icons.check_box
                      : Icons.check_box_outline_blank_outlined),
                  color: TColor.gray,
                ),
                Expanded(
                    child: Text(
                  "By continuing you accept our Privacy  Policy and \n terms of use.",
                  style: TextStyle(fontSize: 12, color: TColor.gray),
                ))
              ],
            ),
            SizedBox(
              height: media.width * 0.39,
            ),
            RoundedBlendButton(title: "Sign Up", onPressed: () {}),
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
            SizedBox(
              height: media.width * 0.04,
            ),
            TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                          color: TColor.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Login",
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
