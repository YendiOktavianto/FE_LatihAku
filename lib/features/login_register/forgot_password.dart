import 'package:fe_latihaku/configurations/size_config.dart';
import 'package:fe_latihaku/constants/constant_button.dart';
import 'package:fe_latihaku/constants/constant_colors.dart';
import 'package:fe_latihaku/constants/constant_text_form.dart';
import 'package:fe_latihaku/constants/constant_text_styles.dart';
import 'package:fe_latihaku/features/login_register/forgot_password_verification.dart';
import 'package:fe_latihaku/features/login_register/header_widget.dart';
import 'package:fe_latihaku/features/login_register/login.dart';
import 'package:fe_latihaku/features/login_register/theme_helper.dart';
import 'package:fe_latihaku/utils/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: getProportionateScreenHeight(300),
                child: HeaderWidget(getProportionateScreenHeight(300), true,
                    Icons.password_rounded),
              ),
              SafeArea(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Forgot Password?',
                              style: arvoDarkOrangeAccent,
                              // textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(10),
                            ),
                            Text(
                                'Enter the email address associated with your account.',
                                style: ubuntuOrangeOriginalForgotPassword),
                            SizedBox(
                              height: getProportionateScreenHeight(10),
                            ),
                            Text(
                                'We will email you a verification code to check your authenticity.',
                                style: ubuntuOrangeOriginalForgotPassword
                                // textAlign: TextAlign.center,
                                ),
                          ],
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            Container(
                              decoration:
                                  ThemeHelper().inputBoxDecorationShaddow(),
                              child: formTextField(
                                validatorForm: (val) {
                                  if (val.isNotEmpty) {
                                    return "Email can't be empty";
                                  } else if (!RegExp(
                                          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                                      .hasMatch(val)) {
                                    return "Enter a valid email address";
                                  }
                                  return null;
                                },
                                prefix: const Icon(Icons.email_sharp,
                                    color: darkOrangeColor),
                                textType: TextInputType.name,
                                textLabel: "Email",
                                textHint: "Enter your Email",
                                labelStyleForm: robotoCondensedDarkOrangeForm,
                                focusedColor: darkOrangeColor,
                                enabledColor: darkOrangeColor,
                              ),
                            ),
                            SizedBox(height: getProportionateScreenHeight(40)),
                            SizedBox(
                              width: getProportionateScreenWidth(100),
                              height: getProportionateScreenHeight(50),
                              child: ElevatedBtnApp(
                                  shapex: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                  ),
                                  colorx: lightOrangeColor,
                                  childx: Text(
                                    "SEND",
                                    style: robotoCondensedDarkOrangeButton,
                                  ),
                                  // ),
                                  onPressedx: () {
                                    changeScreen(context,
                                        const ForgotPasswordVerificationPage());
                                  }),
                            ),
                            SizedBox(height: getProportionateScreenHeight(30)),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                      text: "Remember your password? ",
                                      style: robotoCondensedDarkOrange),
                                  TextSpan(
                                    text: 'Login',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginPage()),
                                        );
                                      },
                                    style: robotoCondensedDarkOrangeBold,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
