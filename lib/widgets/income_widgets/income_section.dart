import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income_widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_widgets/income_details.dart';
import 'package:responsive_dashboard/widgets/income_widgets/income_header.dart';
import 'package:responsive_dashboard/widgets/income_widgets/income_section_body.dart';

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
        children: [
          const IncomeHeader(),
          const SizedBox(height: 16),

          IncomeSectionBody(),
        ],
      ),
    );
  }
}


// sliver fill remainig its height is the height of screeen