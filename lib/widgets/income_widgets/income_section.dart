import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income_widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_widgets/income_details.dart';
import 'package:responsive_dashboard/widgets/income_widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const IncomeHeader(),
          const SizedBox(height: 16),

          // استخدمي AspectRatio للتحكم في ارتفاع الـ Row بالكامل بالنسبة لعرضه
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // الـ Chart يأخذ جزء من المساحة
              const Expanded(
                flex: 2, // تقدري تغيري النسبة دي (مثلاً 2 للشارت و 3 للتفاصيل)
                child: IncomeChart(),
              ),

              // الـ Details تأخذ الجزء المتبقي بجانبها
              const Expanded(flex: 3, child: IncomeDetails()),
            ],
          ),
        ],
      ),
    );
  }
}
