import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/views/adavptive_layout.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AdaptiveLayout(),
    );
  }
}

