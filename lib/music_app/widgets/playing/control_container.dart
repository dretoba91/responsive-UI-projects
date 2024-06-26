import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:reponsive_ui_projects/music_app/constants/colors.dart';

class ControlContainer extends StatelessWidget {
  const ControlContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.shuffle,
              size: 30,
              color: AppColors.textGrey1,
            ),
            const Icon(
              Icons.skip_previous,
              size: 30,
              color: AppColors.greenColor,
            ),
            Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: AppColors.greenColor,
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Icon(
                Icons.play_arrow,
                size: 30,
                color: Colors.white,
              ),
            ),
            const Icon(
              Icons.skip_next,
              size: 30,
              color: AppColors.greenColor,
            ),
            const Icon(
              Icons.repeat,
              size: 30,
              color: AppColors.textGrey1,
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 40,
            ),
            const Icon(
              Icons.volume_down,
              size: 20,
              color: AppColors.textGrey1,
            ),
            Container(
              width: 280,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: LinearPercentIndicator(
                lineHeight: 5,
                percent: 0.6,
                progressColor: AppColors.greenColor,
              ),
            ),
            const Icon(
              Icons.volume_up,
              size: 17,
              color: AppColors.textGrey1,
            ),
            const SizedBox(
              width: 40,
            ),
          ],
        )
      ],
    );
  }
}
