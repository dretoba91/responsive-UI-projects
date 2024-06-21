import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/dashboard_layout/constants/colors.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/dashboard_container.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/dashboard_container1.dart';
import 'package:reponsive_ui_projects/dashboard_layout/widgets/drawer.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBackgroundColor,
        titleSpacing: 0.0,
        title: SizedBox(
          width: 330,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 250,
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
                    Container(
                      width: 200,
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
                            contentPadding:
                                EdgeInsets.only(left: 20, bottom: 12)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 28,
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
                  DashboardContainer1(),
                  SizedBox(
                    height: 20,
                  ),
                  DashboardContainer1(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
