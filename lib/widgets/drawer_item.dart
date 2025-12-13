import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/widgets/active_drawer_item.dart';
import 'package:responsive_dashboard/widgets/inActive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.isActive,
    required this.drawerItemModel,
  });
  final bool isActive;
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InactiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
