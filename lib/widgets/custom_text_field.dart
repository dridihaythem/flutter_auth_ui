import 'package:auth_ui/constant.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    required this.icon,
    this.suffixIcon,
    this.obscureText = false,
  });

  final String hint;
  final IconData icon;
  final IconData? suffixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            icon,
            color: Constant.PrimaryColor,
          ),
          hintText: hint,
          suffixIcon: suffixIcon != null
              ? Icon(
                  suffixIcon,
                  color: Constant.PrimaryColor,
                )
              : null,
        ),
      ),
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: Constant.PrimaryLighColor,
        borderRadius: BorderRadius.circular(29),
      ),
    );
  }
}
