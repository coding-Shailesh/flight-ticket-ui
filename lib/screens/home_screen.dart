import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text('Good Morning',style: Styles.headlineStyle3),
                        const Gap(5),
                        Text('BookTicket',style: Styles.headlineStyle1),
                      ],
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/img_1.png')
                        ),
                      ),
                    ),

                  ],
                ),
                const Gap(25),
                Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Row(
                  children: [
                    Icon(FluentSystemIcons.ic_fluent_search_regular),
                    Text('Search' , style: Styles.headlineStyle4,)
                  ],
                )),
                const Gap(35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Upcoming Flights',style: Styles.headlineStyle2,),
                    InkWell(
                        onTap: (){
                          print('hi');
                        },
                        child: Text('View all',style: Styles.headlineStyle4,))
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(

            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList.map((singleticket) => TicketView(ticket: singleticket,)).toList()
            ),
          ),
          //const Gap(15),
          Container(
            margin: const EdgeInsets.only(left: 16,right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hotels',style: Styles.headlineStyle2,),
                InkWell(
                    onTap: (){
                      print('hi');
                    },
                    child: Text('View all',style: Styles.headlineStyle4,))
              ],
            ),
          ),
          SingleChildScrollView(

            scrollDirection: Axis.horizontal,
            child: Row(

              children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel )).toList()
            ),
          ),


        ],
      ),
    );
  }
}
