import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/second_view.dart';
import 'package:responsive_dashboard/views/third_view.dart';
import 'package:responsive_dashboard/widgets/drawer_widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),

        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(flex: 2, child: SecondView()),

                    Expanded(child: ThirdView()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
