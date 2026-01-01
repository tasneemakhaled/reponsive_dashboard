import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/second_view.dart';
import 'package:responsive_dashboard/views/third_view.dart';
import 'package:responsive_dashboard/widgets/drawer_widgets/custom_drawer.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(children: [SecondView(), ThirdView()]),
          ),
        ),
      ],
    );
  }
}
