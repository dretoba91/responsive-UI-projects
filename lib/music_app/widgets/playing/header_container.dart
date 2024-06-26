// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/music_app/constants/colors.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          'Now Playing',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColors.textBlackGrey,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Image.asset(
          'assets/music/cover_image.png',
          height: 250,
        ),
        Container(
          width: 166,
          height: 24,
          // padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: AppColors.lightGreen,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(
                Icons.headphones_outlined,
                size: 15,
                color: AppColors.greenColor,
              ),
              Text(
                'Airpods Pro (Dave)',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textGrey1,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
