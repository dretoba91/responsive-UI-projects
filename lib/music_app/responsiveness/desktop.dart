import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/music_app/constants/colors.dart';
import 'package:reponsive_ui_projects/music_app/widgets/library/discover_container.dart';
import 'package:reponsive_ui_projects/music_app/widgets/music_drawer.dart/music_drawer_container.dart';
import 'package:reponsive_ui_projects/music_app/widgets/playing/bottom_bar.dart';
import 'package:reponsive_ui_projects/music_app/widgets/playing/control_container.dart';
import 'package:reponsive_ui_projects/music_app/widgets/playing/header_container.dart';
import 'package:reponsive_ui_projects/music_app/widgets/playing/title_display_container.dart';
import 'package:reponsive_ui_projects/music_app/widgets/track_lists/track_lists_container.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 2,
          child: MusicDrawerContainer(
            isTablet: false,
          ),
        ),
        Expanded(
          flex: 6,
          child: Container(
            color: AppColors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: const DiscoverContainer(),
          ),
        ),
        Expanded(
          flex: 10,
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
            ],
          ),
        ),
        Expanded(
          flex: 6,
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
    );
  }
}
