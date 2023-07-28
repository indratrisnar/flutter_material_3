import 'package:flutter/material.dart';
import 'package:flutter_material_3/badge_page.dart';
import 'package:flutter_material_3/common_button_page.dart';
import 'package:flutter_material_3/nav_rail_page.dart';
import 'package:flutter_material_3/fab_page.dart';
import 'package:flutter_material_3/icon_button_page.dart';
import 'package:flutter_material_3/nav_bar_page.dart';
import 'package:flutter_material_3/segmented_button_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      // home: const CommonButtonPage(),
      // home: const FabPage(),
      // home: const IconButtonPage(),
      // home: const SegmentedButtonPage(),
      // home: const BadgePage(),
      // home: const NavBarPage(),
      home: const NavRailPage(),
    );
  }
}
