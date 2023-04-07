import 'package:auth_ui/constant.dart';
import 'package:auth_ui/screens/signup_screen.dart';
import 'package:auth_ui/widgets/custom_text_field.dart';
import 'package:auth_ui/widgets/layout.dart';
import 'package:auth_ui/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                    'assets/images/main_top.png',
                    width: size.width * 0.3,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/images/login_bottom.png',
                    width: size.width * 0.55,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Constant.PrimaryColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icons/login.svg',
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
                      text: 'Login',
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                      },
                      child: Text.rich(
                        TextSpan(
                          text: 'Don\'t have an account? ',
                          style: TextStyle(
                            color: Constant.PrimaryColor,
                          ),
                          children: [
                            TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
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
