import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/dashboard_layout/responsive_layout.dart/responsiveness.dart';
import 'package:reponsive_ui_projects/dashboard_layout/screens/desktop_screen.dart';
import 'package:reponsive_ui_projects/dashboard_layout/screens/mobile_screen.dart';
import 'package:reponsive_ui_projects/dashboard_layout/screens/tablet_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Responsive UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Responsiveness(
        mobileScreen: MobileScreen(),
        tabletScreen: TabletScreen(),
        desktopScreen: DesktopScreen(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
