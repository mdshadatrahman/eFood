import 'package:flutter/material.dart';

class TopRedBar extends StatelessWidget {
  const TopRedBar({
    Key? key,
    required this.deviceHeight,
  }) : super(key: key);

  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight * 0.08,
      width: double.infinity,
      color: Colors.red[300],
      alignment: Alignment.center,
      child: Text(
        'Resturant is closed now, will be opened at 9:00 am',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
