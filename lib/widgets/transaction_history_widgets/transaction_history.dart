import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_widgets/custom_history_of_transaction.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transaction History                        ',
              style: AppStyles.styleSemiBold20(),
            ),
            Text('See all', style: AppStyles.styleMedium16()),
          ],
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text('13 April 2022', style: AppStyles.styleMedium16()),
        ),
        CustomHistoryOfTransaction(
          title: 'Cash Withdrawal',
          subTitle: '13 Apr, 2022 ',
          price: '20,129',
        ),
        CustomHistoryOfTransaction(
          title: 'Landing Page project',
          subTitle: '13 Apr, 2022 at 3:30 PM',
          price: '2,000',
        ),
        CustomHistoryOfTransaction(
          title: 'Juni Mobile App project',
          subTitle: '13 Apr, 2022 at 3:30 PM',
          price: '20,129',
        ),
      ],
    );
  }
}
