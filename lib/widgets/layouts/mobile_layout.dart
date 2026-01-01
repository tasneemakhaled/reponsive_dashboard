import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/second_view.dart';
import 'package:responsive_dashboard/views/third_view.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [SecondView(), ThirdView()]),
    );
  }
}
