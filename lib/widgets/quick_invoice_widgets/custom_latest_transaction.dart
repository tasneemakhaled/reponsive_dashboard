import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/latest_transaction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomLatestTransaction extends StatelessWidget {
  const CustomLatestTransaction({
    super.key,
    required this.latestTransactionModel,
  });

  final LatestTransactionModel latestTransactionModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),

      decoration: BoxDecoration(
        color: Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          SvgPicture.asset(latestTransactionModel.image),
          Column(
            children: [
              Text(
                latestTransactionModel.title,
                style: AppStyles.styleSemiBold16(),
              ),
              Text(
                latestTransactionModel.subTitle,
                style: AppStyles.styleRegular12(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
