import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/music_app/constants/colors.dart';

class MusicDrawerContainer extends StatelessWidget {
  const MusicDrawerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 150,
          child: DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/music/mastercard-line.png',
                  width: 32,
                  height: 32,
                ),
                Image.asset(
                  'assets/music/drawer_image.png',
                  width: 32,
                  height: 32,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              top: 10,
              right: 5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.settings_suggest_outlined,
                      size: 30,
                      color: AppColors.lightGrey,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: AppColors.greenColor,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: const Icon(
                        Icons.headphones_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Icon(
                      Icons.favorite_outline,
                      size: 30,
                      color: AppColors.lightGrey,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Icon(
                      Icons.library_music_outlined,
                      size: 30,
                      color: AppColors.lightGrey,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Discover New Music',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textBlackGrey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Top-chart',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: AppColors.lightGrey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/music/topchart1.png',
                          width: 80,
                        ),
                        Image.asset(
                          'assets/music/topchart2.png',
                          width: 80,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                color: AppColors.lightGrey,
                height: 1.0,
                indent: 0,
                endIndent: 20,
              ),
              SizedBox(
                height: 15,
              ),
              Icon(
                Icons.settings,
                size: 25,
                color: AppColors.lightGrey,
              ),
              SizedBox(
                height: 15,
              ),
              Icon(
                Icons.logout_outlined,
                size: 25,
                color: AppColors.lightGrey,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
