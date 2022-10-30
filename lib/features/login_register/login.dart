//@dart=2.9
import 'package:fe_latihaku/configurations/size_config.dart';
import 'package:fe_latihaku/constants/constant_button.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: getProportionateScreenHeight(250),
              child: HeaderWidget(getProportionateScreenHeight(250), true,
                  Icons.login_rounded), //let's create a common header widget
            ),
            SafeArea(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                // This will be the login form
                child: Column(
                  children: [
                    Text(
                      'Hello',
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(60),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Sign in into your account',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: getProportionateScreenHeight(30)),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          formTextField(
                            validatorForm: (value) {
                              if (value.isEmpty) {
                                return "The password field cannot be empty"; //showSnackBar("The password field cannot be empty", _key);
                              } else if (value.length < 6) {
                                return "The password has to be at least 6 characters long"; //showSnackBar("The password has to be at least 6 characters long", _key);
                              }
                              return null;
                            },
                            suffix: Icon(Icons.remove_red_eye),
                            textType: TextInputType.phone,
                            textLabel: "Nomor HP",
                            textHint: "Masukkan Nomor HP Anda",
                            //controller: nomorHpController,
                          ),
                          SizedBox(height: getProportionateScreenHeight(30)),
                          multilineFormTextField(
                              textType: TextInputType.multiline,
                              textLabel: "Alamat",
                              textHint: "Masukkan Alamat Anda",
                              //controller: alamatController,
                              height: getProportionateScreenHeight(20)),
                          SizedBox(height: getProportionateScreenHeight(30)),
                          Container(
                            child: TextField(
                              obscureText: true,
                              decoration: ThemeHelper().textInputDecoration(
                                  'Password', 'Enter your password'),
                            ),
                            decoration:
                                ThemeHelper().inputBoxDecorationShaddow(),
                          ),
                          SizedBox(height: getProportionateScreenHeight(15)),
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ForgotPasswordPage()),
                                );
                              },
                              child: const Text(
                                "Forgot your password?",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          ElevatedBtnApp(
                              shapex: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  side: BorderSide(
                                      color: Colors.purple,
                                      width: getProportionateScreenWidth(3))),
                              childx: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Login",
                                  style: ubuntuBlackBold,
                                ),
                              ),
                              onPressedx: () {
                                changeScreen(context, BottomNavbar());
                              }),
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
                                  const TextSpan(text: "Don\'t have an account? "),
                                  TextSpan(
                                    text: 'Create',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RegistrationPage()));
                                      },
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context).accentColor),
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
