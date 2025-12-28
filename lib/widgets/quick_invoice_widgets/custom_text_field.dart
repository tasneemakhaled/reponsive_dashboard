import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
        fillColor: Color(0xffFAFAFA),
        filled: true,
        hintText: hint,
        hintStyle: AppStyles.styleRegular16().copyWith(
          color: Color(0xffAAAAAA),
        ),
      ),
    );
  }
}
