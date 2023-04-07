import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Layout extends StatelessWidget {
  final List<Widget> children;
  const Layout({
    super.key,
    required this.children,
  });

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
                children: children,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
