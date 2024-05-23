import 'package:flutter/material.dart';

import 'custom_list_item.dart';

class CustomSilverListView extends StatelessWidget {
  const CustomSilverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(top: 16),
          child: CustomListItem(),
        );
      },
    );
  }
}

