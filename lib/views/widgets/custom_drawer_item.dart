import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/models/drawer_item_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
      Icon(drawerItemModel.icon)
      ,
      title:
      Padding(
        padding: const EdgeInsets.only(left: 16),
        child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(drawerItemModel.title)),
      ),
    );
  }
}
