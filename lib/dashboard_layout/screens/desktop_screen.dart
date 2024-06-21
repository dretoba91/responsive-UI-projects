import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/dashboard_container.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DashboardContainer(
        color: Colors.orange,
        child: Center(
          child: Text(
            'Desktop Screen',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
