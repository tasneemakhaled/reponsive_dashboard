import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/layouts/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/layouts/desktop_layout.dart';
import 'package:responsive_dashboard/widgets/layouts/mobile_layout.dart';
import 'package:responsive_dashboard/widgets/layouts/tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => TabletLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
