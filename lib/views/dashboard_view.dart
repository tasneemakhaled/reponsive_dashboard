import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/drawer_widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/layouts/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/layouts/desktop_layout.dart';
import 'package:responsive_dashboard/widgets/layouts/mobile_layout.dart';
import 'package:responsive_dashboard/widgets/layouts/tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MediaQuery.of(context).size.width < 800 ? CustomDrawer() : null,
      backgroundColor: Color(0xffF7F9FA),
      appBar: MediaQuery.of(context).size.width < 800
          ? AppBar(
              title: Text('Mobile Layout'),
              backgroundColor: Color(0xff4EB7F2),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
            )
          : null,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => TabletLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
