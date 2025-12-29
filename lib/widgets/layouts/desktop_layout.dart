import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/second_view.dart';
import 'package:responsive_dashboard/views/third_view.dart';

import 'package:responsive_dashboard/widgets/layouts/mobile_layout.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: MobileLayout()),
        // SizedBox(width: 32),
        Expanded(flex: 2, child: SecondView()),
        // SizedBox(height: 12),
        Expanded(child: ThirdView()),
      ],
    );
  }
}
