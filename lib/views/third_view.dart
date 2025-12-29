import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/card_widgets/my_cards_section.dart';

import 'package:responsive_dashboard/widgets/income_widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/transaction_history_widgets/transaction_history.dart';

class ThirdView extends StatelessWidget {
  const ThirdView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(color: Color(0xffFFFFFF)),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyCardsSection(),
            Divider(height: 20, color: Color(0xffF1F1F1)),
            TransactionHistory(),
            Expanded(child: IncomeSection()),
          ],
        ),
      ),
    );
  }
}
