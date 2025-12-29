import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomHistoryOfTransaction extends StatelessWidget {
  const CustomHistoryOfTransaction({
    super.key,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.priceColor,
  });
  final String title, subTitle, price;
  final int priceColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: IntrinsicHeight(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xffFAFAFA),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    title,
                    style: AppStyles.styleSemiBold16().copyWith(
                      color: Color(0xff064061),
                    ),
                  ),

                  Text(
                    subTitle,
                    style: AppStyles.styleRegular16().copyWith(
                      color: Color(0xffAAAAAA),
                    ),
                  ),
                ],
              ),
              Text(
                price,
                style: AppStyles.styleSemiBold20().copyWith(
                  color: Color(priceColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
