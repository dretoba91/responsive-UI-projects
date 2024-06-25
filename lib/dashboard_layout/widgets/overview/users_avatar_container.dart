// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/dashboard_layout/constants/colors.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/overview/user_avatar.dart';

class UsersAvatarContainer extends StatelessWidget {
  final bool isDesktop;
  const UsersAvatarContainer({super.key, required this.isDesktop});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: isDesktop
            ? EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 50,
              )
            : EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 10,
              ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UserAvatar(
              size: 85,
              image: 'assets/dashboard/images/man.png',
              name: 'Osis.s',
            ),
            VerticalDivider(
              color: AppColors.textGreyColor,
              thickness: 0.5,
              indent: 25,
              endIndent: 25,
            ),
            UserAvatar(
              size: 85,
              image: 'assets/dashboard/images/lady3.png',
              name: 'Renuka',
            ),
            VerticalDivider(
              color: AppColors.textGreyColor,
              thickness: 0.5,
              indent: 20,
              endIndent: 20,
            ),
            UserAvatar(
              size: 85,
              image: 'assets/dashboard/images/lady2.png',
              name: 'Preety',
            ),
            VerticalDivider(
              color: AppColors.textGreyColor,
              thickness: 0.5,
              indent: 20,
              endIndent: 20,
            ),
            UserAvatar(
              size: 85,
              image: 'assets/dashboard/images/lady.png',
              name: 'Sam',
            ),
            VerticalDivider(
              color: AppColors.textGreyColor,
              thickness: 0.5,
              indent: 20,
              endIndent: 20,
            ),
            UserAvatar(
              size: 85,
              image: 'assets/dashboard/images/lady1.png',
              name: 'Arura',
            ),
          ],
        ),
      ),
    );
  }
}
