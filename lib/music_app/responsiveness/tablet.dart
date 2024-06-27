import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/music_app/constants/colors.dart';
import 'package:reponsive_ui_projects/music_app/widgets/music_drawer.dart/music_drawer_container.dart';
import 'package:reponsive_ui_projects/music_app/widgets/playing/bottom_bar.dart';
import 'package:reponsive_ui_projects/music_app/widgets/playing/control_container.dart';
import 'package:reponsive_ui_projects/music_app/widgets/playing/header_container.dart';
import 'package:reponsive_ui_projects/music_app/widgets/playing/title_display_container.dart';
import 'package:reponsive_ui_projects/music_app/widgets/track_lists/track_lists_container.dart';

class Tablet extends StatelessWidget {
  const Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBackgroundColor,
      ),
      drawer: const Drawer(
        elevation: 0,
        width: 180,
        backgroundColor: AppColors.appBackgroundColor,
        child: MusicDrawerContainer(),
      ),
      body: Container(
        width: double.infinity,
        color: AppColors.appBackgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
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
              ),
            ),
            Expanded(
              child: Container(
                color: AppColors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                child: const TrackListsContainer(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
