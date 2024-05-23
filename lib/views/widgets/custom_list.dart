import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/views/widgets/custom_item.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 160,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index){
          return const Padding(
            padding: EdgeInsets.only(right: 8),
            child: AspectRatio(
                aspectRatio: 1 ,
                child: CustomItem()),
          );
        },),
      ),
    );
  }
}
