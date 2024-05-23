import 'package:flutter/material.dart';

import '../../models/drawer_item_model.dart';
import 'custom_drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrawerItemModel> items =  [
    DrawerItemModel(
      title: 'DASHBOARD',
      icon: Icons.home,
    ),
    DrawerItemModel(
      title: 'SETTINGS',
      icon: Icons.settings,
    ),
    DrawerItemModel(
      title: 'ABOUT',
      icon: Icons.info,
    ),
    DrawerItemModel(
      title: 'LOGOUT',
      icon: Icons.logout,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  const Drawer(
      backgroundColor: Color(0xffDBDBDB),
      elevation: 0,
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.favorite,
              size: 60,
            ),
          ),
          SizedBox(height: 16,),
          CustomDrawerItemListView(items: items),
        ],
      ),
    );
  }
}

