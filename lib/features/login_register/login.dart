//@dart=2.9
import 'package:fe_latihaku/configurations/size_config.dart';
import 'package:fe_latihaku/constants/constant_button.dart';
import 'package:fe_latihaku/constants/constant_colors.dart';
import 'package:fe_latihaku/constants/constant_text_form.dart';
import 'package:fe_latihaku/constants/constant_text_styles.dart';

import 'package:fe_latihaku/features/login_register/forgot_password.dart';
import 'package:fe_latihaku/features/login_register/header_widget.dart';
import 'package:fe_latihaku/features/login_register/register.dart';
import 'package:fe_latihaku/features/login_register/theme_helper.dart';
import 'package:fe_latihaku/utils/bottom_navbar.dart';
import 'package:fe_latihaku/utils/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // double _headerHeight = 250;
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Key _formKey = GlobalKey<FormState>();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(250),
              child: HeaderWidget(getProportionateScreenHeight(250), true,
                  Icons.login_rounded), //let's create a common header widget
            ),
            SafeArea(
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                // This will be the login form
                child: Column(
                  children: [
                    Text(
                      'Login',
                      style: arvoDarkOrangeAccent,
                    ),
                    SizedBox(height: getProportionateScreenHeight(15)),
                    Text(
                      'Hello, Enter your details to get sign to your account',
                      style: robotoCondensedDarkOrange,
                    ),
                    SizedBox(height: getProportionateScreenHeight(30)),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          formTextField(
                            validatorForm: (value) {
                              if (value.isEmpty) {
                                return "The Username field cannot be empty";
                              } else if (value.length < 3) {
                                return "The Username has to be at least 3 characters long";
                              }
                              return null;
                            },
                            prefix: const Icon(Icons.person_rounded, color: darkOrangeColor),
                            textType: TextInputType.name,
                            textLabel: "Username / Email",
                            textHint: "Enter your Username / Email",
                            labelStyleForm: robotoCondensedDarkOrangeForm,
                            focusedColor: darkOrangeColor,
                            enabledColor: darkOrangeColor,
                          ),
                          SizedBox(height: getProportionateScreenHeight(30)),
                          formTextField(
                              validatorForm: (value) {
                                if (value.isEmpty) {
                                  return "The password field cannot be empty";
                                } else if (value.length < 8) {
                                  return "The password has to be at least 8 characters long";
                                }
                                return null;
                              },
                              obscureText: obscureText,
                              prefix: const Icon(Icons.key, color: darkOrangeColor),
                              suffix: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    obscureText = !obscureText;
                                  });
                                },
                                child: Icon(obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility , color: darkOrangeColor,),
                              ),
                              textType: TextInputType.visiblePassword,
                              textLabel: "Password",
                              textHint: "Enter your Password",
                              labelStyleForm: robotoCondensedDarkOrangeForm,
                              focusedColor: darkOrangeColor,
                              enabledColor: darkOrangeColor),
                          SizedBox(height: getProportionateScreenHeight(15)),
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                              onTap: () {
                                changeScreen(context, const ForgotPasswordPage());
                              },
                              child: const Text(
                                "Forgot your password?",
                                style: TextStyle(
                                  color: darkOrangeColor,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            width: getProportionateScreenWidth(300),
                            height: getProportionateScreenHeight(50),
                            child: ElevatedBtnApp(
                                shapex: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25),
                                  ),
                                ),
                                colorx: lightOrangeColor,
                                childx:
                                    // Padding(
                                    //   padding: const EdgeInsets.only(
                                    //       left: 125, right: 125, top: 15, bottom: 15),
                                    //   child:
                                    Text(
                                  "Login",
                                  style: robotoCondensedDarkOrangeButton,
                                ),
                                // ),
                                onPressedx: () {
                                  changeScreen(context, const BottomNavbar());
                                }),
                          ),
                          // Container(
                          //   decoration:
                          //       ThemeHelper().buttonBoxDecoration(context),
                          //   child: ElevatedButton(
                          //     style: ThemeHelper().buttonStyle(),
                          //     child: Padding(
                          //       padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                          //       child: Text(
                          //         'Sign In'.toUpperCase(),
                          //         style: TextStyle(
                          //             fontSize: getProportionateScreenWidth(20),
                          //             fontWeight: FontWeight.bold,
                          //             color: Colors.white),
                          //       ),
                          //     ),
                          //     onPressed: () {
                          //       //After successful login we will redirect to profile page. Let's create profile page now
                          //       changeScreenReplacement(
                          //           context,BottomNavbar());
                          //     },
                          //   ),
                          // ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                   TextSpan(
                                      text: "Don\'t have an account? ", style: robotoCondensedDarkOrange),
                                  TextSpan(
                                    text: 'Create',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const RegistrationPage()));
                                      },
                                    style: robotoCondensedDarkOrangeBold,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
