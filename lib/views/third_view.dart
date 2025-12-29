import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/card_widgets/my_cards_section.dart';

import 'package:responsive_dashboard/widgets/income_widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/transaction_history_widgets/transaction_history.dart';

class ThirdView extends StatelessWidget {
  const ThirdView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(color: Color(0xffFFFFFF)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyCardsSection(),
            Divider(height: 40, color: Color(0xffF1F1F1)),
            TransactionHistory(),
            IncomeSection(),
          ],
        ),
      ),
    );
  }
}
