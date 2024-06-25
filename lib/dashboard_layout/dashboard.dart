import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/dashboard_layout/responsive_layout.dart/responsiveness.dart';
import 'package:reponsive_ui_projects/dashboard_layout/screens/desktop_screen.dart';
import 'package:reponsive_ui_projects/dashboard_layout/screens/mobile_screen.dart';
import 'package:reponsive_ui_projects/dashboard_layout/screens/tablet_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsiveness(
      mobileScreen: MobileScreen(),
      tabletScreen: TabletScreen(),
      desktopScreen: DesktopScreen(),
    );
  }
}
