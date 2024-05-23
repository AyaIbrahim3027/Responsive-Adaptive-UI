import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/views/widgets/adaptive_layout_widget.dart';
import 'package:responsive_adaptive_ui/views/widgets/desktop_layout.dart';
import 'package:responsive_adaptive_ui/views/widgets/tablet_layout.dart';
import 'mobile_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AdaptiveLayoutWidget(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout:(context) => const DesktopLayout(),
      ),
    );
  }
}
