import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

import 'package:responsive_dashboard/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 270,
      width: 600,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          AllExpensesHeader(),

          Row(
            children: [
              AllExpensesItem(
                title: 'Balance',

                svgPicture: SvgPicture.asset(Assets.imagesBalance),
              ),
              AllExpensesItem(
                title: 'Income',

                svgPicture: SvgPicture.asset(Assets.imagesIncome),
              ),
              AllExpensesItem(
                title: 'Expenses',

                svgPicture: SvgPicture.asset(Assets.imagesExpenses),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
