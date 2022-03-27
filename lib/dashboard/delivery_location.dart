import 'package:eat_twenty_four/components/const.dart';
import 'package:eat_twenty_four/components/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';

import 'add_address.dart';
import 'cartscreen.dart';

class Delivery_Location extends StatefulWidget {


  @override
  _Delivery_LocationState createState() => _Delivery_LocationState();
}

class _Delivery_LocationState extends State<Delivery_Location> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

          body:Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Stack(
         children: [
               Container(
             height: MediaQuery.of(context).size.height,
             width: MediaQuery.of(context).size.width,
             child: Image.asset("assets/map.png",
             fit: BoxFit.cover,
             ),


           ),
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Row(
                   children: [
                     InkWell(
                       child: Icon(
                         Icons.arrow_back_ios,
                         color: Constants.booger,
                       ),
                       onTap: (){

                           Navigator.push(context,
                               PageTransition(
                                   type: PageTransitionType.topToBottom,
                                   child: cart(1),
                               )
                           );

                       },
                     ),
                     Spacer(),
                     TextWidget(
                         "My Location",
                         false,
                         FontWeight.normal,
                         1.4,
                         Constants.purplebrown,
                         TextAlign.center,
                         'pnbold'),
                     Spacer(),
                     Icon(
                       Icons.notifications_none,
                       color: Constants.purplebrown,
                     ),
                   ],
                 ),
               ),
               Padding(
             padding: const EdgeInsets.only(top: 200),
             child: Align(
               alignment: Alignment.center,
               child: Container(
                 child: Column(
                children: [
                  Icon(
                    Icons.location_on,
                  color: Constants.booger,
                    size: 45,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/1.3,
                    height: 46,
                    child: Center(
                      child: TextWidget(
                          "Drag on map to change location".toUpperCase(),
                          false,
                          FontWeight.normal ,
                          1.0,
                          Colors.white,
                          TextAlign.center,
                          'pnregular'),
                    ),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Constants.purplebrown,

                    ),

                  ),
                ],
                 ),
               ),
             ),
           ),
               Align(
                 alignment: Alignment.bottomCenter,
                 child: Container(
                   height: MediaQuery.of(context).size.height/3.5,
                   width: MediaQuery.of(context).size.width,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(
                       topRight: Radius.circular(40),
                       topLeft: Radius.circular(40),
                     ),
                     color: Colors.white,
                     boxShadow: [
                     BoxShadow(
                       color: Colors.grey.withOpacity(0.5),
                       spreadRadius: 5,
                       blurRadius: 7,
                       offset: Offset(0, 3), // changes position of shadow
                     ),
                     ],

                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Align(
                           alignment: Alignment.topLeft,
                           child: TextWidget(
                               "Set Delivery Location",
                               false,
                               FontWeight.normal,
                               1.4,
                               Constants.purplebrown,
                               TextAlign.center,
                               'pnbold'),
                         ),

                         Divider(),

                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Icon(Icons.location_on_outlined,
                               color: Constants.purplebrown,
                               size: 25,
                             ),
                             SizedBox(width: 10,),

                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 TextWidget(
                                     "Your Location",
                                     false,
                                     FontWeight.normal,
                                     1.1,
                                     Constants.greyishthree,
                                     TextAlign.center,
                                     'pnregular'),
                                 SizedBox(height: 5,),
                                 TextWidget(
                                     "Gaur City 1 Club",
                                     false,
                                     FontWeight.normal,
                                     1.1,
                                     Constants.purplebrown,
                                     TextAlign.center,
                                     'pnbold'),


                               ],
                             ),
                             Spacer(),
                             TextWidget(
                                 "Set Manually".toUpperCase(),
                                 false,
                                 FontWeight.w600,
                                 1.21,
                                 Constants.faddedred,
                                 TextAlign.center,
                                 'pnregular'),

                           ],
                         ),


                         InkWell(
                           child: Container(
                             width: MediaQuery.of(context).size.width/1.15,
                             height: 56,
                             child: Center(
                               child:   TextWidget(
                                   "Confirm Address".toUpperCase(),
                                   false,
                                   FontWeight.w500 ,
                                   1.2,
                                   Colors.white,
                                   TextAlign.center,
                                   'pnbold'),
                             ),

                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: Constants.booger,

                             ),

                           ),
                           onTap: (){
                             Navigator.push(context,
                                 PageTransition(
                                     type: PageTransitionType.bottomToTop,
                                     child: add_address()
                                 )
                             );
                           },
                         ),

                       ],
                     ),
                   ),

                 ),
               )


                ],
            ),

          )


      ),
    );
  }
}
