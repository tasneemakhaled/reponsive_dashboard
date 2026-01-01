import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/income_widgets/income_model.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  // القائمة الثابتة للبيانات
  static const items = [
    IncomeModel(
      title: 'Design service',
      value: '40%',
      color: Color(0xff208CC8),
    ),
    IncomeModel(
      title: 'Design product',
      value: '25%',
      color: Color(0xff4EB7F2),
    ),
    IncomeModel(
      title: 'Product royalti',
      value: '20%',
      color: Color(0xff064061),
    ),
    IncomeModel(title: 'Other', value: '22%', color: Color(0xffE2DECD)),
  ];

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.of(context).size.width.toString());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => ItemDetails(incomeModel: e)).toList(),
    );
  }
}

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.incomeModel});

  final IncomeModel incomeModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      
      contentPadding: EdgeInsets.zero,

      
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: incomeModel.color,
        ),
      ),

    
      title: Text(incomeModel.title, style: AppStyles.styleRegular16()),

  
      trailing: Text(incomeModel.value, style: AppStyles.styleMedium16()),
    );
  }
}

// shrink wrap truee  = معناها انها بتبني كله مرة واحدة
// sliver fill remaining(has scropale body:false) = معناها انها بتبني بشكل lazy
