import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/dashboard_layout/constants/colors.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/popular_product_header.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/popular_products_tiles.dart';

class PopularProductsContainer extends StatelessWidget {
  const PopularProductsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.appBackgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular Products',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: AppColors.textBlackColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Column(
              children: [
                PopularProductHeader(),
                SizedBox(
                  height: 20,
                ),
                PopularProductsTiles(
                  image: 'assets/dashboard/images/productA.png',
                  product: 'Product A',
                  earning: '123',
                  hasDivider: true,
                ),
                PopularProductsTiles(
                  image: 'assets/dashboard/images/productB.png',
                  product: 'Product B',
                  earning: '129',
                  hasDivider: true,
                ),
                PopularProductsTiles(
                  image: 'assets/dashboard/images/productC.png',
                  product: 'Product C',
                  earning: '183',
                  hasDivider: true,
                ),
                PopularProductsTiles(
                  image: 'assets/dashboard/images/productD.png',
                  product: 'Product D',
                  earning: '143',
                  hasDivider: false,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
