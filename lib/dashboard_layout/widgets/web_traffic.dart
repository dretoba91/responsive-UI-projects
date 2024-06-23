import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/dashboard_layout/constants/colors.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/income_rate_tiles.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/tiles_header.dart';

class WebTraffic extends StatelessWidget {
  const WebTraffic({super.key});

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
            "Title",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w600,
              color: AppColors.textBlackColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TilesHeader(),
          IncomeRateTiles(
            source: 'website.net',
            sessions: 4321,
            change: '+84%',
            hasDivider: true,
          ),
          IncomeRateTiles(
            source: 'website.net',
            sessions: 4033,
            change: '+8%',
            hasDivider: true,
          ),
          IncomeRateTiles(
            source: 'website.net',
            sessions: 3128,
            change: '+2%',
            hasDivider: true,
          ),
          IncomeRateTiles(
            source: 'website.net',
            sessions: 2704,
            change: '+33%',
            hasDivider: true,
          ),
          IncomeRateTiles(
            source: 'website.net',
            sessions: 2003,
            change: '+30%',
            hasDivider: true,
          ),
          IncomeRateTiles(
            source: 'website.net',
            sessions: 1894,
            change: '+15%',
            hasDivider: true,
          ),
          IncomeRateTiles(
            source: 'website.net',
            sessions: 405,
            change: '+12%',
            hasDivider: false,
          ),
        ],
      ),
    );
  }
}
