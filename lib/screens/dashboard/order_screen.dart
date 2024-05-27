import'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:food_ordering_app/utils/constant_colors.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100,),
            const Align(
              alignment: Alignment.topCenter,
              child: Text('My Orders',style: TextStyle(
                fontSize: 25,fontWeight: FontWeight.w600
              ),),
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context,int){
               return DottedBorder(
                 borderType: BorderType.RRect,
                dashPattern: [3,3,],
                 radius: Radius.circular(15),
                 strokeWidth:1,
                 color: Colors.black,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                         children: [
                           const Expanded(
                             child: Text('The Pizza Place',style: TextStyle(
                               fontWeight: FontWeight
                                   .w600,fontSize:17
                             ),),
                           ),
                           Container(
                             decoration: const BoxDecoration(
                               shape: BoxShape.circle,
                               color: ConstantColors.beach
                             ),
                             height: 17,
                           ),
                           const Text('In Progress',style: TextStyle(
                             color:ConstantColors.beach
                           ),),
                         ],
                       ),
                       const Text('ODR75942'),
                       SizedBox(height: 30,),
                       const Row(
                         children: [
                           Expanded(
                             child: Text('Total Amount',style: TextStyle(

                             ),),
                           ),
                           Text('Quantity'),
                         ],
                       ),
                       const Row(
                         children: [
                           Expanded(
                             child: Text('\$83.66',style: TextStyle(
                                 fontWeight: FontWeight.w600
                             ),),
                           ),
                           Text('4',style: TextStyle(
                               fontWeight: FontWeight.w600
                           ),)
                         ],
                       )
                     ],
                   ),
                 )
               );
              }, separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 20,);
              },),
            )
          ],
        ),
      ),
    );

  }
}
