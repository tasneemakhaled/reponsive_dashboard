import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomHistoryOfTransaction extends StatelessWidget {
  const CustomHistoryOfTransaction({
    super.key,
    required this.title,
    required this.subTitle,
    required this.price,
  });
  final String title, subTitle, price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: 70,
        width: 400,
        decoration: BoxDecoration(color: Color(0xffFAFAFA)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(title, style: AppStyles.styleSemiBold16()),

                Text(subTitle, style: AppStyles.styleRegular16()),
              ],
            ),
            Text(price, style: AppStyles.styleSemiBold20()),
          ],
        ),
      ),
    );
  }
}
