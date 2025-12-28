import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Quick Invoice', style: AppStyles.styleSemiBold20()),
        Container(
          height: 40,
          width: 40,
          decoration: ShapeDecoration(
            color: Color(0xffFAFAFA),
            shape: OvalBorder(),
          ),
          child: Icon(Icons.add, color: Color(0xff4EB7F2)),
        ),
        // IconButton(onPressed: () {}, icon: Icon(Icons.add)),
      ],
    );
  }
}
