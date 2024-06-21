import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/dashboard_container.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DashboardContainer(
        color: Colors.pink,
        child: Center(
          child: Text(
            'Tablet Screen',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
