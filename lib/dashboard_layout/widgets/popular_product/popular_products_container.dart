import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/dashboard_layout/constants/colors.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/popular_product/popular_product_header.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/popular_product/popular_products_tiles.dart';

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Popular Products',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: AppColors.textBlackColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Column(
              children: [
                const PopularProductHeader(),
                const SizedBox(
                  height: 20,
                ),
                const PopularProductsTiles(
                  image: 'assets/dashboard/images/productA.png',
                  product: 'Product A',
                  earning: '123',
                  hasDivider: true,
                ),
                const PopularProductsTiles(
                  image: 'assets/dashboard/images/productB.png',
                  product: 'Product B',
                  earning: '129',
                  hasDivider: true,
                ),
                const PopularProductsTiles(
                  image: 'assets/dashboard/images/productC.png',
                  product: 'Product C',
                  earning: '183',
                  hasDivider: true,
                ),
                const PopularProductsTiles(
                  image: 'assets/dashboard/images/productD.png',
                  product: 'Product D',
                  earning: '143',
                  hasDivider: false,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: 200,
                      decoration: BoxDecoration(
                        color: AppColors.appBackgroundColor,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: AppColors.searchBgColor,
                          style: BorderStyle.solid,
                          width: 4.0,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2.0,
                            blurRadius: 2.0,
                            offset: const Offset(
                              0,
                              3,
                            ), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          'All Product',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textGreyColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
