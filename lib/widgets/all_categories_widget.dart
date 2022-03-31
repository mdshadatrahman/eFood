import 'package:flutter/material.dart';

class AllCategoriesWidget extends StatelessWidget {
  const AllCategoriesWidget({
    Key? key,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(left: deviceWidth * .02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'All Categories',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                EachCategory(deviceWidth: deviceWidth),
                EachCategory(deviceWidth: deviceWidth),
                EachCategory(deviceWidth: deviceWidth),
                EachCategory(deviceWidth: deviceWidth),
                EachCategory(deviceWidth: deviceWidth),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//!Needs to be worked on

class EachCategory extends StatelessWidget {
  const EachCategory({
    Key? key,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: deviceWidth * 0.02),
      child: Column(
        children: [
          CircleAvatar(
            radius: 38,
            child: Image.network(
              'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
              fit: BoxFit.fill,
            ),
          ),
          Text('Bengali'),
        ],
      ),
    );
  }
}
