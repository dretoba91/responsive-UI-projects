// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/dashboard_layout/constants/colors.dart';

class UserAvatar extends StatelessWidget {
  final String image;
  final String name;
  final double size;
  const UserAvatar({
    super.key,
    required this.image,
    required this.name,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: size,
            child: CircleAvatar(
              child: Image.asset(
                image,
                height: size,
                width: size,
              ),
            ),
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: AppColors.text2Color,
            ),
          )
        ],
      ),
    );
  }
}
