import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/card_widgets/my_cards_section.dart';
import 'package:responsive_dashboard/widgets/transaction_history_widgets/transaction_history.dart';

class ThirdView extends StatelessWidget {
  const ThirdView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Color(0xffFFFFFF)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCardsSection(),
          SizedBox(height: 12),
          TransactionHistory(),
        ],
      ),
    );
  }
}
