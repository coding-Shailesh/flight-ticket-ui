import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
class AppIconText extends StatelessWidget {
  final IconData iconData;
  final String text;
  const AppIconText({Key? key, required this.iconData, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(iconData),
          Text('  $text',style: Styles.headlineStyle2,)

        ],
      ),
    );
  }
}
