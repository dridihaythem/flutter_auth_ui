import 'package:auth_ui/constant.dart';
import 'package:auth_ui/screens/login_screen.dart';
import 'package:auth_ui/screens/signup_screen.dart';
import 'package:auth_ui/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
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
                    'Welcome to my app :)',
                    style: TextStyle(
                      color: Constant.PrimaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SvgPicture.asset(
                    'assets/icons/chat.svg',
                    height: size.height * 0.5,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RoundedButton(
                    backgroundColor: Constant.PrimaryColor,
                    minimumSize: Size(size.width * 0.8, 50),
                    text: 'Login',
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RoundedButton(
                    backgroundColor: Constant.PrimaryLighColor,
                    minimumSize: Size(size.width * 0.8, 50),
                    text: 'Register',
                    textColor: Colors.black,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
