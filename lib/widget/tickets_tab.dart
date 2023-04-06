import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
class AppTicketTabs extends StatelessWidget {
  final String FirstTab;
  final String SecoundTab;
  const AppTicketTabs({Key? key, required this.FirstTab, required this.SecoundTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size=AppLayout.getSize(context);
    return  Container(
      width: size.width*0.90,
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
        color: Colors.grey.shade300,


      ),
      margin: EdgeInsets.all(2),
      child: Row(
        children: [
          Container(
            width: size.width*0.44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
              color: Colors.white,

            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text(FirstTab)),
            ),
          ),
          Container(
            width: size.width*0.44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
              color: Colors.grey.shade700,

            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text(SecoundTab)),
            ),
          ),
        ],
      ),
    );
  }
}
