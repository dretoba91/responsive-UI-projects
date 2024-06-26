import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/dashboard_layout/constants/colors.dart';
import 'package:reponsive_ui_projects/music_app/widgets/playing/bottom_bar.dart';
import 'package:reponsive_ui_projects/music_app/widgets/playing/control_container.dart';
import 'package:reponsive_ui_projects/music_app/widgets/playing/header_container.dart';
import 'package:reponsive_ui_projects/music_app/widgets/playing/title_display_container.dart';

class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appBackgroundColor,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HeaderContainer(),
          SizedBox(
            height: 25,
          ),
          TitleDisplayContainer(),
          SizedBox(
            height: 25,
          ),
          ControlContainer(),
          SizedBox(
            height: 25,
          ),
          BottomBar()
        ],
      ),
    );
  }
}
