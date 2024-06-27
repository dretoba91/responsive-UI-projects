import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reponsive_ui_projects/music_app/constants/colors.dart';

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
          Column(
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
            ],
          ),
          // Row(
          //   children: [
          //     Column(),
          //   ],
          // ),
        ],
      ),
    );
  }
}
