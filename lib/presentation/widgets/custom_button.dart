import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/utils/text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgourndColor, this.textColor, required this.text});

  final Color? backgourndColor, textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor: backgourndColor ?? const Color(0xFF4DB7F2),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: getTitleStyle(context).copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}