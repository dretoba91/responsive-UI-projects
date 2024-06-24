import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/dashboard_layout/constants/colors.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/comment/comments_header.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/comment/comments_tile.dart';

class CommentsContainer extends StatelessWidget {
  const CommentsContainer({super.key});

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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Comments',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: AppColors.textBlackColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            child: Column(
              children: [
                CommentsHeader(),
                SizedBox(
                  height: 20,
                ),
                CommentsTile(
                  comment: 'cool responsive ui features',
                  date: 'Jun/24',
                ),
                Divider(
                  color: AppColors.textGreyColor,
                  thickness: 0.5,
                  indent: 5,
                  endIndent: 5,
                ),
                CommentsTile(
                  comment:
                      'generated incomes are quite enticing..looking forward to the coming ones',
                  date: 'Jun/24',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
