import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses', style: AppStyles.styleSemiBold20()),
        Expanded(child: SizedBox()),
        Container(
          padding: EdgeInsets.all(8),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(width: 1, color: Color(0xffF1F1F1)),
            ),
            color: Color(0xffFFFFFF),
          ),
          child: Row(
            children: [
              Text('Monthly', style: AppStyles.styleMedium16()),
              SizedBox(width: 10),
              Icon(Icons.arrow_drop_down, color: Color(0xff064061)),
            ],
          ),
        ),
        // DropdownMenu(
        //   dropdownMenuEntries: [
        //     DropdownMenuEntry(value: 0, label: 'Daily'),
        //     DropdownMenuEntry(value: 1, label: 'Weakly'),
        //     DropdownMenuEntry(value: 2, label: 'Monthly'),
        //     DropdownMenuEntry(value: 3, label: 'Yearly'),
        //   ],
        // ),
      ],
    );
  }
}
