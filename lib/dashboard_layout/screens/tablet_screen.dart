import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/dashboard_layout/constants/colors.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/comment/comments_container.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/dashboard_container.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/overview/dashboard_container1.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/drawer.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/popular_product/popular_products_container.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/web_traffic/web_traffic.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBackgroundColor,
        titleSpacing: 0.0,
        title: Container(
          width: double.infinity,
          height: 30,
          padding: const EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            color: AppColors.searchBgColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 20,
                ),
              ),
              Expanded(
                child: Container(
                  // width: 550,
                  height: 25,
                  color: AppColors.searchBgColor,
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: 'Search or type a command',
                        hintStyle: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.normal,
                          color: AppColors.textGreyColor,
                        ),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 20, bottom: 12)),
                  ),
                ),
              ),
            
            ],
          ),
        ),
        actions: [
          const SizedBox(
            width: 200,
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.btnColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: InkWell(
              onTap: () {},
              child: const Text(
                "Create",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                softWrap: true,
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.chat_outlined,
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          CircleAvatar(
            child: Image.asset(
              'assets/dashboard/images/person.png',
            ),
          ),
          const SizedBox(
            width: 40,
          ),
        ],
      ),
      drawer: const Drawer(
        backgroundColor: AppColors.appBackgroundColor,
        elevation: 0,
        child: DrawerContainer(),
      ),
      body: const SafeArea(
        child: DashboardContainer(
          color: AppColors.searchBgColor,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dashboard',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DashboardContainer1(
                          isDesktop: false,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        WebTraffic(),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 52,
                        ),
                        PopularProductsContainer(),
                        SizedBox(
                          height: 20,
                        ),
                        CommentsContainer(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
