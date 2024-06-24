import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/dashboard_layout/constants/colors.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/overview/income_container.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/overview/overview.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/overview/users_avatar_container.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/overview/welcome_container.dart';

class DashboardContainer1 extends StatelessWidget {
  const DashboardContainer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.appBackgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Column(
        children: [
          Overview(),
          SizedBox(
            height: 20,
          ),
          IncomeContainer(),
          SizedBox(
            height: 20,
          ),
          WelcomeContainer(),
          SizedBox(
            height: 20,
          ),
          UsersAvatarContainer(),
        ],
      ),
    );
  }
}
