import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
        ),
        SizedBox(height: 16,),
        
      ],
    );
  }
}
