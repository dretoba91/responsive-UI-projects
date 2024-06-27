import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:reponsive_ui_projects/music_app/constants/colors.dart';

class TitleDisplayContainer extends StatelessWidget {
  const TitleDisplayContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.add_outlined,
              size: 25,
              color: AppColors.lightGreen,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Money Machine',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textBlackGrey,
                  ),
                ),
                Text(
                  '1000 Gecks',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textGrey2,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.favorite_outline,
              size: 25,
              color: AppColors.lightGreen,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // width: 340,
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 5,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '2:14',
                  ),
                  // SizedBox(
                  //   width: 200,
                  // ),
                  Text(
                    '-1:14',
                  ),
                ],
              ),
            ),
            Container(
              // width: 340,
              padding: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: LinearPercentIndicator(
                lineHeight: 5,
                percent: 0.6,
                progressColor: AppColors.greenColor,
              ),
            )
          ],
        )
      ],
    );
  }
}
