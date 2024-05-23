import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/views/widgets/custom_item.dart';

import 'custom_list_item.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(flex: 2, child: CustomItem()),
        SizedBox(height: 16,),
        Expanded(child: CustomListItem()),
      ],
    );
  }
}
