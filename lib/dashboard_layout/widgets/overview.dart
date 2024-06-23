import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/dashboard_layout/constants/colors.dart';

class Overview extends StatefulWidget {
  const Overview({super.key});

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  String _selectedValue = 'All Time';
  final List<String> _options = [
    'All Time',
    'Option 2',
    'Option 3',
    'Option 4'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 10,
      ),
      decoration: BoxDecoration(
        color: AppColors.appBackgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Overview',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: AppColors.textBlackColor,
            ),
          ),
          Container(
            // width: 80,
            decoration: BoxDecoration(
                color: AppColors.searchBgColor,
                borderRadius: BorderRadius.circular(16)),
            child: DropdownButton<String>(
              value: _selectedValue,
              dropdownColor: AppColors.searchBgColor,
              isDense: true,
              padding: const EdgeInsets.all(8),
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    _selectedValue = value;
                  });
                }
              },
              items: _options.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              underline: Container(
                height: 0.0, // Set the height to 0 to remove the underline
              ),
              icon: const Icon(Icons.keyboard_arrow_down_sharp),
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.textGreyColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
