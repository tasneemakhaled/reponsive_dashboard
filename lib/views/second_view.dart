import 'package:flutter/material.dart';

import 'package:responsive_dashboard/widgets/all_expenses_widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_widgets/quick_invoice.dart';

class SecondView extends StatelessWidget {
  const SecondView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [AllExpenses(), SizedBox(height: 16), QuickInvoice()],
    );

    //   ],
    // );
  }
}
