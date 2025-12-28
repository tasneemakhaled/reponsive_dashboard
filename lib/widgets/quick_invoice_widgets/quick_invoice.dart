import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_widgets/latest_transaction.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_widgets/quick_invoice_form.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 15),
          LatestTransaction(),
          Divider(height: 48, color: Color(0xffF1F1F1)),

          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
