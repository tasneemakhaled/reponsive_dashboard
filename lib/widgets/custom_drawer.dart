import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';

import 'package:responsive_dashboard/utils/app_images.dart';

import 'package:responsive_dashboard/widgets/drawer_items_list_view.dart';
import 'package:responsive_dashboard/widgets/inActive_drawer_item.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesAvatar3,
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
          ),
          SizedBox(height: 8),
          DrawerItemsListView(),
          Expanded(child: SizedBox()),
          InactiveDrawerItem(
            drawerItemModel: DrawerItemModel(
              image: Assets.imagesSettings,
              title: 'Setting system',
            ),
          ),
          InactiveDrawerItem(
            drawerItemModel: DrawerItemModel(
              image: Assets.imagesLogout,
              title: 'Logout account',
            ),
          ),
          SizedBox(height: 48),
        ],
      ),
    );
  }
}
