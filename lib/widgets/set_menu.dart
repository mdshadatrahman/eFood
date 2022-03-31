import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SetMenu extends StatelessWidget {
  const SetMenu({
    Key? key,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: deviceWidth * .02),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Set Menu',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(right: deviceWidth * 0.02),
                  child: Text(
                    'View all',
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SetMenuHorizontalList(),
                SetMenuHorizontalList(),
                SetMenuHorizontalList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SetMenuHorizontalList extends StatelessWidget {
  const SetMenuHorizontalList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey, //New
                  blurRadius: 5.0,
                  offset: Offset(0, 5),
                )
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: deviceHeight * 0.15,
                  width: deviceWidth * 0.45,
                  child: Image.network(
                    'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Bengali breakfast\nSet menu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: deviceWidth * 0.45,
                  alignment: Alignment.topRight,
                  child: RatingBar.builder(
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemSize: 15,
                    itemCount: 5,
                    // itemPadding: EdgeInsets.symmetric(horizontal: .20),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.red[300],
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.attach_money,
                        ),
                        Text(
                          '50',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: deviceWidth * 0.2),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
