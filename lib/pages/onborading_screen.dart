import 'package:flutter/material.dart';
import 'package:on_boarding_screen/pages/onboarding_screen1.dart';
import 'package:on_boarding_screen/pages/onboarding_screen2.dart';
import 'package:on_boarding_screen/pages/onboarding_screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool isLastPage = false;
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (value) {
              setState(() {
                isLastPage = (value == 2);
              });
            },
            controller: _controller,
            children: [
              const Screen1(),
              const Screen2(),
              const Screen3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.68),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(dotHeight: 10, dotWidth: 10),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            alignment: Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => _controller.jumpToPage(2),
                  child: Text(
                    "Skip",
                  ),
                ),
                isLastPage
                    ? GestureDetector(
                        onTap: () => _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            //Icons.arrow_forward,
                            Icons.check,
                            color: Colors.white,
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () => _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            //Icons.check,
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
