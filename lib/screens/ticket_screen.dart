import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widget/tickets_tab.dart';
class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 18,vertical: 90),
        children: [
          Gap(AppLayout.getHeight(15)),
          Text('Ticket',style: Styles.headlineStyle1.copyWith(fontSize: 40),),
          Gap(AppLayout.getHeight(15)),
          AppTicketTabs(FirstTab: 'Upcoming', SecoundTab: 'Previous'),
        ],
      ),
    );
  }
}
