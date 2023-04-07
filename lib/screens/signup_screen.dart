import 'package:auth_ui/constant.dart';
import 'package:auth_ui/screens/login_screen.dart';
import 'package:auth_ui/widgets/custom_text_field.dart';
import 'package:auth_ui/widgets/rounded_button.dart';
import 'package:auth_ui/widgets/social_media_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    'assets/images/signup_top.png',
                    width: size.width * 0.3,
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/images/main_bottom.png',
                    width: size.width * 0.2,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Signup',
                      style: TextStyle(
                        color: Constant.PrimaryColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icons/signup.svg',
                      height: size.height * 0.35,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                      hint: 'Enter Your Email',
                      icon: Icons.person,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                      hint: 'Enter Your Password',
                      icon: Icons.lock,
                      suffixIcon: Icons.remove_red_eye,
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RoundedButton(
                      backgroundColor: Constant.PrimaryColor,
                      minimumSize: Size(size.width * 0.8, 50),
                      text: 'Signup',
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                      },
                      child: Text.rich(
                        TextSpan(
                          text: 'I already have an account? ',
                          style: TextStyle(
                            color: Constant.PrimaryColor,
                          ),
                          children: [
                            TextSpan(
                              text: 'Sign In',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: size.width * 0.8,
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Constant.PrimaryColor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            child: Text('Or'),
                          ),
                          Expanded(
                            child: Divider(
                              color: Constant.PrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialMediaButton(
                          path: 'assets/icons/facebook.svg',
                        ),
                        SocialMediaButton(
                          path: 'assets/icons/google-plus.svg',
                        ),
                        SocialMediaButton(
                          path: 'assets/icons/twitter.svg',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
