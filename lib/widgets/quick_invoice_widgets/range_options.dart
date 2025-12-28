import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(width: 1, color: Color(0xffF1F1F1)),
        ),
        color: Color(0xffFFFFFF),
      ),
      child: Row(
        children: [
          Text(text, style: AppStyles.styleMedium16()),
          SizedBox(width: 10),
          Icon(Icons.arrow_drop_down, color: Color(0xff064061)),
        ],
      ),
    );
  }
}
