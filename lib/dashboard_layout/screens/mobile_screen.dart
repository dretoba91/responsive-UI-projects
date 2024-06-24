import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/dashboard_layout/constants/colors.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/dashboard_container.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/overview/dashboard_container1.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/drawer.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/popular_product/popular_products_container.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/web_traffic/web_traffic.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBackgroundColor,
        titleSpacing: 0.0,
        title: SizedBox(
          width: 230,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 20,
                ),
              ),
              Container(
                height: 28,
                padding: const EdgeInsets.only(left: 8, right: 8),
                decoration: BoxDecoration(
                  color: AppColors.btnColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: InkWell(
                  onTap: () {},
                  child: const Center(
                    child: Text(
                      "Create",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.chat_outlined,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          CircleAvatar(
            child: Image.asset(
              'assets/dashboard/images/person.png',
            ),
          ),
          const SizedBox(
            width: 10,
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
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                  DashboardContainer1(),
                  SizedBox(
                    height: 20,
                  ), 
                  WebTraffic(),
                  SizedBox(
                    height: 20,
                  ),
                  PopularProductsContainer()            
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
