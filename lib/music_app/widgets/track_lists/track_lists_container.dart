import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/music_app/constants/colors.dart';
import 'package:reponsive_ui_projects/music_app/widgets/track_lists/track_tile.dart';

class TrackListsContainer extends StatelessWidget {
  const TrackListsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Track list',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textBlackGrey,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shuffle,
                      size: 20,
                      color: AppColors.textGrey1,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.repeat,
                      size: 20,
                      color: AppColors.textGrey1,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Playing next',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textGrey1,
                  ),
                ),
              ],
            ),
          ],
        ),
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: Row(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TrackTile(
                          image: 'assets/music/image 22.png',
                          songTitle: 'Margazine ex',
                          duration: '3:14',
                          artist: '\$ucideBoys',
                          year: '2016',
                        ),
                        TrackTile(
                          image: 'assets/music/image 16.png',
                          songTitle: 'Ice Cave ll',
                          duration: '2:54',
                          artist: 'Lebannon Hover',
                          year: '2009',
                        ),
                        TrackTile(
                          image: 'assets/music/image 18.png',
                          songTitle: 'My Pride',
                          duration: '4:19',
                          artist: 'Sydney Valette',
                          year: '2018',
                        ),
                        TrackTile(
                          image: 'assets/music/image 13.png',
                          songTitle: 'BUTTERFLY EFFECT ex',
                          duration: '4:24',
                          artist: 'Travis Scott',
                          year: '2018',
                        ),
                        TrackTile(
                          image: 'assets/music/image 8.png',
                          songTitle: 'Milk It',
                          duration: '3:55',
                          artist: 'Nirvana',
                          year: '1993',
                        ),
                        TrackTile(
                          image: 'assets/music/image 6.png',
                          songTitle: '122 Days',
                          duration: '4:15',
                          artist: '\$ucideBoys',
                          year: '2018',
                        ),
                        TrackTile(
                          image: 'assets/music/image 15.png',
                          songTitle: 'Courtship Dating',
                          duration: '6:10',
                          artist: 'Crystal Castle',
                          year: '2018',
                        ),
                        TrackTile(
                          image: 'assets/music/topchart1.png',
                          songTitle: 'No Surprises',
                          duration: '3:48',
                          artist: 'RadioHead',
                          year: '1997',
                        ),
                        TrackTile(
                          image: 'assets/music/image 19.png',
                          songTitle: 'Other Side',
                          duration: '3:24',
                          artist: 'Sydney Valette',
                          year: '2016',
                        ),
                        TrackTile(
                          image: 'assets/music/image 14.png',
                          songTitle: 'Dunkelheit',
                          duration: '7:02',
                          artist: 'Burzum',
                          year: '1996',
                        ),
                        TrackTile(
                          image: 'assets/music/image 17.png',
                          songTitle: 'Suffocation',
                          duration: '3:41',
                          artist: 'Crystal Castle',
                          year: '1996',
                        ),
                        TrackTile(
                          image: 'assets/music/image 21.png',
                          songTitle: 'Tony Tone',
                          duration: '4:35',
                          artist: 'A\$AP ROCKY',
                          year: '2018',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
