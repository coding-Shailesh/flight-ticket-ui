import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class HotelScreen extends StatelessWidget {
  final Map<String, dynamic > hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size =AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 17),
      margin: const EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(28),
      color: Styles.primaryColor,),
      //color: Colors.greenAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage( "assets/images/${hotel['image']}")
              )
            ),
          ),
          Text('${hotel['place']}' ,style: Styles.headlineStyle2,),
          const Gap(10),
          Text('${hotel['destination']}' ,style: Styles.headlineStyle3.copyWith(color: Colors.white),),
          const Gap(10),
          Text('\$${hotel['price']}/Night',style: Styles.headlineStyle1.copyWith(color: Colors.white),),

        ],
      ),
    );
  }
}
