import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/transaction_history.dart';

class ThirdView extends StatelessWidget {
  const ThirdView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xffFFFFFF)),
      child: Column(
        children: [
          Text('My card', style: AppStyles.styleSemiBold20()),
          Image(
            height: 200,
            color: Color(0xff5fbef3),
            image: AssetImage(Assets.imagesCardBackground),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
