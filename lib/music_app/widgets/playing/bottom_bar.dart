import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/music_app/constants/colors.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // height: 200,
        padding: const EdgeInsets.symmetric(
          vertical: 30,
        ),
        decoration: const BoxDecoration(
            color: AppColors.white,
            border: Border(
              top: BorderSide(
                width: 2.0,
                color: AppColors.appBackgroundColor,
              ),
            )),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.settings_suggest_outlined,
              size: 30,
              color: AppColors.textGrey1,
            ),
            Icon(
              Icons.headphones_outlined,
              size: 30,
              color: AppColors.greenColor,
            ),
            Icon(
              Icons.favorite_outline,
              size: 30,
              color: AppColors.textGrey1,
            ),
            Icon(
              Icons.library_music_outlined,
              size: 30,
              color: AppColors.textGrey1,
            ),
          ],
        ),
      ),
    );
  }
}
