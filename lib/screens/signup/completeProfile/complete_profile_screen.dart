import 'package:fitness/common/widgets/round_inputfield.dart';
import 'package:fitness/common/widgets/rounded_blend_button.dart';
import 'package:fitness/screens/signup/completeProfile/goal_screen.dart';
import 'package:fitness/theme/colors.dart';
import 'package:flutter/material.dart';

class CompeleteProfileScreen extends StatefulWidget {
  const CompeleteProfileScreen({super.key});

  @override
  State<CompeleteProfileScreen> createState() => _CompeleteProfileScreenState();
}

class _CompeleteProfileScreenState extends State<CompeleteProfileScreen> {
  TextEditingController txtDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              Image.asset(
                "assets/images/signup-2.png",
                width: media.width,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: media.width * 0.05,
              ),
              Text(
                "Let's complete your profile",
                style: TextStyle(
                    color: TColor.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "It will help us to know more about you",
                style: TextStyle(color: TColor.gray, fontSize: 16),
              ),
              SizedBox(
                height: media.width * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: TColor.lightGray,
                        // borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/images/user.png",
                              height: 20,
                              width: 20,
                              fit: BoxFit.contain,
                              color: TColor.gray,
                            ),
                          ),
                          Expanded(
                            child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                              items: ["Male", "Female", "Others"]
                                  .map((name) => DropdownMenuItem(
                                      value: name,
                                      child: Text(
                                        name,
                                        style: TextStyle(
                                          color: TColor.gray,
                                          fontSize: 16,
                                        ),
                                      )))
                                  .toList(),
                              onChanged: (value) {},
                              isExpanded: true,
                              hint: Text(
                                "Choose Gender",
                                style: TextStyle(
                                  color: TColor.gray,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: media.width * 0.03,
                    ),
                    RoundTextInputField(
                        controller: txtDate,
                        hintText: "Date of birth",
                        icon: "assets/images/Calendar.png"),
                    SizedBox(
                      height: media.width * 0.03,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: RoundTextInputField(
                                controller: txtDate,
                                hintText: "Your Weight",
                                icon: "assets/images/weight-scale.png")),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              gradient:
                                  LinearGradient(colors: TColor.secondaryG),
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            "KG",
                            style: TextStyle(
                              color: TColor.white,
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: media.width * 0.03,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: RoundTextInputField(
                                controller: txtDate,
                                hintText: "Your Height",
                                icon: "assets/images/Swap.png")),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              gradient:
                                  LinearGradient(colors: TColor.secondaryG),
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            "CM",
                            style: TextStyle(
                              color: TColor.white,
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: media.width * 0.07,
                    ),
                    RoundedBlendButton(
                        title: "Next",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GoalScreen()));
                        })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
