import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/drawer_item_model.dart';
import '../../utils/app_style.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(drawerItemModel.title , style: AppStyles.styleBold16,),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(
          color: Color(0xff4EB7F2),
        ),
      ),
    );
  }
}