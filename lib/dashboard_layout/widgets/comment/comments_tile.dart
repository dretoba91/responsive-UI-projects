import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/dashboard_layout/constants/colors.dart';

class CommentsTile extends StatelessWidget {
  final String comment;
  final String date;
  const CommentsTile({super.key, required this.comment, required this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            comment,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: AppColors.text2Color,
            ),
          ),
          Text(
            date,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: AppColors.text2Color,
            ),
          ),
        ],
      ),
    );
  }
}
