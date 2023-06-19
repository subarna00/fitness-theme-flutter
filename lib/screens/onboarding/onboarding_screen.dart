import 'package:fitness/screens/signup/signup.dart';
import 'package:fitness/screens/onboarding/onboarding_page.dart';
import 'package:fitness/theme/colors.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List pages = [
    {
      "title": "Track Your Goal",
      "subtitle":
          "Don't worry if you have trouble determining your goals,  We can help you determine your goals and track your goals",
      "image": "assets/images/onboarding_1.png",
    },
    {
      "title": "Get Burn",
      "subtitle":
          "Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
      "image": "assets/images/onboarding_2.png",
    },
    {
      "title": "Eat Well",
      "subtitle":
          "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
      "image": "assets/images/onboarding_3.png",
    },
    {
      "title": "Improve Sleep \n Quality",
      "subtitle":
          "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
      "image": "assets/images/onboarding_4.png",
    },
  ];
  PageController controller = PageController();
  int selectedPage = 0;

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      setState(() {
        selectedPage = controller.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.white,
      body: Stack(alignment: Alignment.bottomRight, children: [
        PageView.builder(
            controller: controller,
            itemCount: pages.length,
            itemBuilder: (context, index) {
              var pObj = pages[index] as Map? ?? {};
              return OnboardingPage(pageObj: pObj);
            }),
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 70,
              width: 70,
              child: CircularProgressIndicator(
                color: TColor.primaryColor1,
                value: (selectedPage + 1) / 4,
                strokeWidth: 2,
              ),
            ),
            Container(
              height: 60,
              width: 60,
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              decoration: BoxDecoration(
                color: TColor.primaryColor1,
                borderRadius: BorderRadius.circular(35),
              ),
              child: IconButton(
                onPressed: () {
                  if (selectedPage >= pages.length - 1) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupScreen()));
                  } else {
                    selectedPage = selectedPage + 1;
                    controller.animateToPage(selectedPage,
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeInBack);
                  }
                },
                icon: Icon(
                  Icons.navigate_next,
                  color: TColor.white,
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
