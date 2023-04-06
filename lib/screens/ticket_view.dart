import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widget/thick_widget.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class TicketView extends StatelessWidget {
  final Map<String,dynamic> ticket;
  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: const EdgeInsets.only(left: 16 , bottom: 10),
        child: Column(
          children: [
            Container(
              
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
              ),
              padding: const EdgeInsets.all(16),

              child: Column(
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(ticket['from']['code'],style: Styles.headlineStyle3.copyWith(color: Colors.white), ),
                      const Spacer(),
                      const ThickContainer(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                          height: 24,

                          child: LayoutBuilder(

                            builder: (BuildContext context, BoxConstraints constraints ) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate((constraints.constrainWidth()/10).floor(), (index) => const SizedBox(
                                  width: 3,height: 2,child: DecoratedBox(decoration: BoxDecoration(
                                    color: Colors.white
                                ),),
                                )),
                              );
                            },

                          ),

                        ),
                          Center(child: Transform.rotate(angle: 1.5,child: const Icon(Icons.local_airport_rounded,color: Colors.white,),)),],
                      )),
                      const ThickContainer(),
                      const Spacer(), //Expanded(child: Container()), can also we used
                      Text(ticket['to']['code'],style: Styles.headlineStyle3.copyWith(color: Colors.white),)
                    ],
                  ),
                  const Gap(4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(ticket['from']['name'],style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                      Text(ticket['flying_time'],style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                      Text(ticket['to']['name'],style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                    ],
                  ),
                ],
              ),
            ), //above side of ticket
            Container(
              color: Colors.greenAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25)
                      )

                    )),
                  ),
                  Expanded(child: LayoutBuilder(builder: (BuildContext context , BoxConstraints constraints ) {
                    return (Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate((constraints.constrainWidth()/10).floor(), (index) => const SizedBox(
                        width: 3,
                        height: 1,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white
                          ),

                        ),
                      )),
                    ));
                  },) ),
                 const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomLeft: Radius.circular(25)
                        )

                    )),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(ticket['date'],style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                      Text('Date',style: Styles.headlineStyle3.copyWith(color: Colors.white),),

                    ],
                  ),
                  Column(
                    children: [
                      Text(ticket['departure_time'],style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                      Text('Departure time',style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                    ],
                  ),
                  //const Gap(5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('${ticket['number']}',style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                      Text('Number',style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
