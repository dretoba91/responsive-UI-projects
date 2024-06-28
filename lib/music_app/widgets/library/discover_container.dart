import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reponsive_ui_projects/music_app/constants/colors.dart';
import 'package:reponsive_ui_projects/music_app/widgets/track_lists/track_tile.dart';

class DiscoverContainer extends StatelessWidget {
  const DiscoverContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> menuItems = ['Day', 'Week', 'Month', 'Year'];
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Discover \nNew music',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: AppColors.textBlackGrey,
              overflow: TextOverflow.clip,
            ),
            softWrap: true,
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Top-chart',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textGrey1,
                      ),
                    ),
                    // const SizedBox(
                    //   width: 20,
                    // ),
                    SizedBox(
                      width: 70,
                      child: DropdownButtonFormField<String>(
                        value: 'Week',
                        onChanged: (value) {},
                        items: menuItems.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textGrey1,
                              ),
                            ),
                          );
                        }).toList(),
                        icon: const Icon(Icons.keyboard_arrow_down_sharp),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/music/topchart1.png',
                        // width: 80,
                        height: 160,
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        'assets/music/topchart2.png',
                        // width: 80,
                        height: 160,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/music/like1.png',
                        // width: 100,
                        height: 160,
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        'assets/music/like2.png',
                        // width: 100,
                        height: 160,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            flex: 3,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You may like',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textBlackGrey,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TrackTile(
                  image: 'assets/music/image 11.png',
                  songTitle: 'Static ex',
                  artist: 'Godspeed You, Black',
                  duration: '22:36',
                  year: '2001',
                  shouldHaveOutline: false,
                ),
                TrackTile(
                  image: 'assets/music/image 23.png',
                  songTitle: 'Empathy',
                  artist: 'Crystal Castle',
                  duration: '4:16',
                  year: '2014',
                  shouldHaveOutline: false,
                ),
                TrackTile(
                  image: 'assets/music/image 22.png',
                  songTitle: 'Margazine ex',
                  duration: '3:14',
                  artist: '\$ucideBoys',
                  year: '2016',
                  shouldHaveOutline: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
