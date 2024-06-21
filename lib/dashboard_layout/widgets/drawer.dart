import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/dashboard_layout/constants/colors.dart';

class DrawerContainer extends StatelessWidget {
  const DrawerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  Image.asset('assets/dashboard/images/circle.png'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12, right: 8, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_outlined,
                    color: AppColors.textBlackColor,
                    size: 23,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Lato',
                      color: AppColors.text2Color,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 8, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shop_outlined,
                        color: AppColors.textBlackColor,
                        size: 23,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Shop',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Lato',
                          color: AppColors.textGreyColor,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: AppColors.textGreyColor,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 8, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.medical_information_outlined,
                        color: AppColors.textBlackColor,
                        size: 23,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Product',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Lato',
                          color: AppColors.textGreyColor,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: AppColors.textGreyColor,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 8, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.money,
                        color: AppColors.textBlackColor,
                        size: 23,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Income',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Lato',
                          color: AppColors.textGreyColor,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: AppColors.textGreyColor,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 8, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_sharp,
                        color: AppColors.textBlackColor,
                        size: 23,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Customer',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Lato',
                          color: AppColors.textGreyColor,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: AppColors.textGreyColor,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10, bottom: 40),
          child: Column(
            children: [
              Divider(
                color: AppColors.textGreyColor,
                height: 1.0,
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 8, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.circle_sharp,
                      color: AppColors.textBlackColor,
                      size: 23,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Help and Getting setting',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Lato',
                        color: AppColors.textGreyColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 8, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.logout_outlined,
                      color: AppColors.textBlackColor,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Log Out',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                        color: AppColors.textGreyColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
