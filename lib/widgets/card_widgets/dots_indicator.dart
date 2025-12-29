import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/card_widgets/custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPageIndex});
final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CustomDot(isActive: index==currentPageIndex),
            ),
          ],
        );
      }),
    );
  }
}
