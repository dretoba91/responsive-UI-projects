import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/dashboard_layout/constants/colors.dart';

class CommentsHeader extends StatelessWidget {
  const CommentsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Messages',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColors.textGreyColor,
          ),
        ),
        Text(
          'Date',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColors.textGreyColor,
          ),
        ),
      ],
    );
  }
}
