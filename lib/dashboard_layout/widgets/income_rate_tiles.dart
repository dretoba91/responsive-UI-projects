// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/dashboard_layout/constants/colors.dart';

class IncomeRateTiles extends StatelessWidget {
  final String source;
  final double sessions;
  final String change;
  final bool hasDivider;
  const IncomeRateTiles({
    super.key,
    required this.source,
    required this.sessions,
    required this.change,
    required this.hasDivider,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              source,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppColors.text2Color,
              ),
            ),
            SizedBox(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '$sessions',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.text2Color,
                    ),
                  ),
                  Text(
                    change,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.text2Color,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        hasDivider
            ? const Divider(
                color: AppColors.textGreyColor,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              )
            : Container()
      ],
    );
  }
}
