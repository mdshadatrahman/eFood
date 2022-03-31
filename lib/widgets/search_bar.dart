import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight * 0.08,
      width: deviceWidth * 0.85,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Icon(
                  Icons.search,
                  size: 30,
                ),
              ),

              //search field
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: deviceHeight * 0.08,
                  width: deviceWidth * 0.5,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Items Here ...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: deviceWidth * .02),
            child: IconButton(
              icon: Icon(Icons.tune),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}