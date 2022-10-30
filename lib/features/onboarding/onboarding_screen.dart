//@dart=2.9
import 'package:fe_latihaku/configurations/size_config.dart';
import 'package:fe_latihaku/constants/constant_animation.dart';
import 'package:fe_latihaku/constants/constant_colors.dart';
import 'package:fe_latihaku/features/login_register/login.dart';
import 'package:fe_latihaku/features/onboarding/onboarding_content.dart';
import 'package:fe_latihaku/features/onboarding/onboarding_data.dart';
import 'package:fe_latihaku/utils/routes.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0;

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: getProportionateScreenHeight(40),
              ),
              Expanded(
                flex: 5,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  onPageChanged: _onchanged,
                  controller: _controller,
                  itemCount: onboardingData.length,
                  itemBuilder: (context, index) => OnboardingContent(
                    head: onboardingData[index]["head"],
                    image: onboardingData[index]["image"],
                    text: onboardingData[index]['text'],
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: getProportionateScreenHeight(30),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          onboardingData.length,
                          (index) => buildDot(index: index),
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(50),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Skip',
                            style: TextStyle(
                                color: greyColor,
                                fontSize: getProportionateScreenWidth(16)),
                          ),
                          InkWell(
                            onTap: () {
                              if (_currentPage == (onboardingData.length - 1)) {
                                changeScreenReplacement(context, const LoginPage());
                              } else {
                                _controller.nextPage(
                                    duration: const Duration(milliseconds: 800),
                                    curve: Curves.easeInOutQuint);
                              }
                            },
                            child: Container(
                              height: getProportionateScreenHeight(50),
                              width:
                                  (_currentPage == (onboardingData.length - 1))
                                      ? 200
                                      : 50,
                              decoration: BoxDecoration(
                                color: rightButton,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: rightButton.withOpacity(0.3),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: (_currentPage ==
                                      (onboardingData.length - 1))
                                  ? Center(
                                      child: Text(
                                        "Get Started",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              getProportionateScreenWidth(20),
                                        ),
                                      ),
                                    )
                                  : const Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 7),
      height: getProportionateScreenHeight(3),
      width: _currentPage == index ? 30 : 15,
      decoration: BoxDecoration(
        color: _currentPage == index ? dotColor : notDotColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
