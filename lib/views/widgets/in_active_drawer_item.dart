import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/drawer_item_model.dart';
import '../../utils/app_style.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(drawerItemModel.title , style: AppStyles.styleMedium16,),
    );
  }
}