import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/dashboard_layout/constants/colors.dart';

class PopularProductsTiles extends StatelessWidget {
  final String image;
  final String product;
  final String earning;
  final bool hasDivider;
  const PopularProductsTiles({
    super.key,
    required this.image,
    required this.product,
    required this.earning,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  image,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  product,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textGreyColor,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.clip,
                ),
              ],
            ),
            Flexible(
              child: Text(
                '$earning\$',
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textGreyColor,
                ),
                softWrap: true,
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        hasDivider
            ? const Divider(
                color: AppColors.textGreyColor,
                thickness: 1.0,
                indent: 0,
                endIndent: 0,
              )
            : Container(),
        hasDivider
            ? const SizedBox(
                height: 20,
              )
            : Container(),
      ],
    );
  }
}
