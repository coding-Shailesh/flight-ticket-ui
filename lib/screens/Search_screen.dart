import 'package:booktickets/screens/icon_text_eidget.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widget/tickets_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class SearchScreen extends StatelessWidget {

  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
      padding: EdgeInsets.symmetric(horizontal: 18,vertical: 90),
        children: [
           Gap(AppLayout.getHeight(15)),
          Text('What are \nyou looking for',style: Styles.headlineStyle1.copyWith(fontSize: 40),),
          Gap(AppLayout.getHeight(15)),
          AppTicketTabs(FirstTab: 'Airline Ticket', SecoundTab: 'Hotel Booking'),
          Gap(AppLayout.getHeight(15)),
         AppIconText(iconData: Icons.flight_takeoff_rounded, text: 'Dparture')  ,
          Gap(AppLayout.getHeight(15)),
          AppIconText(iconData: Icons.flight_takeoff_rounded, text: 'Arrival')  ,
          Gap(AppLayout.getHeight(15)),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(child: Text('Flight ticket',style: Styles.headlineStyle2.copyWith(color: Colors.white),)),
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            margin: const EdgeInsets.only(left: 1,right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Upcoming Flight',style: Styles.headlineStyle2,),
                InkWell(
                    onTap: (){
                      print('hi');
                    },
                    child: Text('View all',style: Styles.headlineStyle4,))
              ],
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                height: AppLayout.getHeight(300),
                width: size.width*0.44,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:[
                    BoxShadow(
                    color: Colors.grey.shade400,
                      blurRadius: 6,
                      spreadRadius: 2,
                  )]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sit.jpg"),
                        )
                      ),
                    ),
                    Text('20% off on early  flight booking,Dont miss the chance ',style: Styles.headlineStyle3,)
                  ],
                ),
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        height: AppLayout.getHeight(200),
                        width: size.width*0.44,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Discount for Servey ',style: Styles.headlineStyle2.copyWith(color: Colors.white),),
                            ),
                            Padding(padding: const EdgeInsets.all(8.0),
                            child: Text('Take survey about our services  and get Discount',style: Styles.headlineStyle3.copyWith(color: Colors.white),))
                          ],
                        )
                      ),


                    ],

                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    height: AppLayout.getHeight(200),
                    width: size.width*0.44,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text('Take Love',style: Styles.headlineStyle1.copyWith(color: Colors.white),),

                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
