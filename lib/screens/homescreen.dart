import 'package:flutter/material.dart';

import '../widgets/all_categories_widget.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/logo_name_notification.dart';
import '../widgets/search_bar.dart';
import '../widgets/set_menu.dart';
import '../widgets/top_red_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: BottonNavigation(),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: deviceHeight * 0.05),
                //Top red bar
                TopRedBar(deviceHeight: deviceHeight),
                SizedBox(height: deviceHeight * 0.01),
                //Logo, Name, Notification Icons
                LogoNameNotification(deviceHeight: deviceHeight),
                //Search bar
                SizedBox(height: deviceHeight * 0.01),
                SearchBar(deviceHeight: deviceHeight, deviceWidth: deviceWidth),

                //All Categories
                SizedBox(height: deviceHeight * 0.05),
                AllCategoriesWidget(deviceWidth: deviceWidth),

                //Set Menu
                SizedBox(height: deviceHeight * 0.05),
                SetMenu(deviceWidth: deviceWidth),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
