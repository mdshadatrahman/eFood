import 'package:flutter/material.dart';

class LogoNameNotification extends StatelessWidget {
  const LogoNameNotification({
    Key? key,
    required this.deviceHeight,
  }) : super(key: key);

  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: deviceHeight * 0.05,
              child: Image.asset('images/logo.png'),
            ),
            SizedBox(width: 5),
            Text(
              'eFood',
              style: TextStyle(
                color: Colors.red[300],
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.notifications,
            size: 28,
          ),
        ),
      ],
    );
  }
}
