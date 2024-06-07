import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor, this.textColor});

  final Color? backgroundColor, textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor ?? const Color(0xff4DB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: Text(
          'Send Money',
          style: AppStyles.styleSemiBold18.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}