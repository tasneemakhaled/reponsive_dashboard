import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  static const List<DrawerItemModel> items = [
    DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesMyTransctions, title: 'My Transaction'),
    DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

int isSelectedIndex = 0;
final List<DrawerItemModel> items = [
  DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
  DrawerItemModel(image: Assets.imagesMyTransctions, title: 'My Transaction'),
  DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
  DrawerItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
  DrawerItemModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
];
bool isActive = false;

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: DrawerItemsListView.items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (isSelectedIndex != index) {
              setState(() {
                isSelectedIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: isSelectedIndex != index
                ? DrawerItem(
                    drawerItemModel: DrawerItemsListView.items[index],
                    isActive: isSelectedIndex == index,
                  )
                : DrawerItem(
                    drawerItemModel: DrawerItemsListView.items[index],
                    isActive: isSelectedIndex == index,
                  ),
          ),
        );
      },
    );
  }
}
