import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/music_app/constants/colors.dart';

class TrackTile extends StatelessWidget {
  final String image;
  final String songTitle;
  final String artist;
  final String duration;
  final String year;
  const TrackTile({
    super.key,
    required this.image,
    required this.songTitle,
    required this.artist,
    required this.duration,
    required this.year,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appBackgroundColor,
      margin: const EdgeInsets.only(
        bottom: 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/music/Outline.png',
                  // width: 40,
                ),
                const SizedBox(
                  width: 5,
                ),
                Image.asset(
                  image,
                  width: 49,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        songTitle,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textBlackGrey,
                          overflow: TextOverflow.ellipsis,
                        ),
                        softWrap: true,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        duration,
                        style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textBlackGrey,
                            overflow: TextOverflow.clip),
                        softWrap: true,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        artist,
                        style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textGrey1,
                            overflow: TextOverflow.clip),
                        softWrap: true,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        year,
                        style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textGrey1,
                            overflow: TextOverflow.clip),
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
