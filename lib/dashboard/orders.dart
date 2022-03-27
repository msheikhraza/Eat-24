import 'package:eat_twenty_four/components/const.dart';
import 'package:eat_twenty_four/components/textwidget.dart';
import 'package:eat_twenty_four/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'order_status.dart';
import 'orderdetails.dart';


class orders extends StatefulWidget {
  int index;
  orders(this.index);


  @override
  _ordersState createState() => _ordersState();
}

class _ordersState extends State<orders> {


  final List<cartitems> cartitemslist =[
    cartitems(cartitemsimg:"assets/fodimg1.png",cartitemsname: "Easy Spanish Chicken",cartitemsquantity: "1",cartitemsprice:"20.00"),
    cartitems(cartitemsimg:"assets/details.png",cartitemsname: "Paradise Hyderabadi Biryani",cartitemsquantity: "1",cartitemsprice:"13.00"),
    cartitems(cartitemsimg:"assets/fodimg1.png",cartitemsname: "Butter Naan",cartitemsquantity: "1",cartitemsprice:"16.00"),

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body:widget.index==0 ?Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: [
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
                        Navigator.pop(context);
                      },
                    ),
                    Spacer(),
                    TextWidget(
                        "Orders",
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
              SizedBox(height: 40,),
              Image.asset(
                'assets/orderimg.png',
                height: MediaQuery.of(context).size.height/2.8,
                width: MediaQuery.of(context).size.width/1.2,
                fit: BoxFit.cover,

              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width/1.5,
                child: TextWidget(
                    "No Order Avaliable",
                    false,
                    FontWeight.normal,
                    2.0,
                    Constants.purplebrown,
                    TextAlign.center,
                    'pnbold'),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width/1.3,
                child: TextWidget(
                    "Good food is always cooking! Go ahead, order some yummy food from the menu.",
                    false,
                    FontWeight.normal,
                    1.2,
                    Constants.warmgrey,
                    TextAlign.center,
                    'pnlight'),
              ),
            ],
          ),

        ):Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: [

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
                        Navigator.pop(context);
                      },
                    ),
                    Spacer(),
                    TextWidget(
                        "Orders",
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

              Container(
                height: MediaQuery.of(context).size.height/1.18,

                child: ListView.builder
                  (
                    itemCount: 2,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Column(

                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextWidget(
                                          "#000123456",
                                          false,
                                          FontWeight.normal,
                                          1.1,
                                          Constants.purplebrown,
                                          TextAlign.center,
                                          'pnbold'),
                                      SizedBox(height: 5,),
                                      TextWidget(
                                          "Today at 10:15 PM",
                                          false,
                                          FontWeight.normal,
                                          1.1,
                                          Constants.greyishthree,
                                          TextAlign.center,
                                          'pnregular'),
                                    ],
                                  ),
                                  Spacer(),
                                  TextWidget(
                                      "\$39.00".toUpperCase(),
                                      false,
                                      FontWeight.w600,
                                      1.1,
                                      Constants.sapgreen,
                                      TextAlign.center,
                                      'pnregular'),

                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: TextWidget(
                                    "3 Items",
                                    false,
                                    FontWeight.normal,
                                    1.2,
                                    Constants.greyishthree,
                                    TextAlign.center,
                                    'pnregular'),
                              ),
                            ),
                            Container(
                                height: MediaQuery.of(context).size.height/3.6,

                                child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                    itemCount: cartitemslist.length,

                                    itemBuilder: (BuildContext ctxt, int Index) {
                                      return Container(
                                        height: MediaQuery.of(context).size.height/11.0,
                                        // decoration: BoxDecoration(
                                        //   boxShadow: [
                                        //     BoxShadow(
                                        //       color: Colors.grey.withOpacity(0.1),
                                        //       spreadRadius: 5,
                                        //       blurRadius: 7,
                                        //       offset: Offset(0, 3), // changes position of shadow
                                        //     ),
                                        //   ],
                                        // ),

                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10),
                                          child: Row(
                                            //mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(10.0),
                                                  child: Image.asset(
                                                    cartitemslist[Index].cartitemsimg,
                                                    fit: BoxFit.cover,
                                                    width:40,
                                                    height:40,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 20,),
                                              TextWidget(
                                                  "3",
                                                  false,
                                                  FontWeight.normal,
                                                  1.2,
                                                  Constants.purplebrown,
                                                  TextAlign.center,
                                                  'pnbold'),
                                              TextWidget(
                                                  " x "+cartitemslist[Index].cartitemsname,
                                                  false,
                                                  FontWeight.normal,
                                                  1.0,
                                                  Constants.purplebrown,
                                                  TextAlign.center,
                                                  'pnregular'),

                                            ],
                                          ),
                                        ),
                                      );
                                    },

                                ),
                              color: Colors.white,
                            ),
                           index==0 ?Padding(
                              padding: const EdgeInsets.only(left: 15,right: 15),
                              child: Row(
                                children: [
                                  SvgPicture.asset("assets/trackorder.svg"),
                                  SizedBox(width: 10,),
                                  InkWell(
                                    child: TextWidget(
                                        "Track Order",
                                        false,
                                        FontWeight.w600,
                                        1.1,
                                        Constants.faddedred,
                                        TextAlign.center,
                                        'pnregular'),
                                    onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (BuildContext context) => Order_Status())
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ):
                           Padding(
                             padding: const EdgeInsets.only(left: 15,right: 15),
                             child: Row(
                               children: [
                                 SvgPicture.asset("assets/delivered.svg"),
                                 SizedBox(width: 10,),
                                 TextWidget(
                                     "Delivered",
                                     false,
                                     FontWeight.w600,
                                     1.1,
                                     Constants.weirdgreen,
                                     TextAlign.center,
                                     'pnregular'),

                                 Spacer(),
                                 Icon(Icons.refresh,
                                 color: Constants.faddedred,
                                 ),
                                 SizedBox(width: 10,),
                                 InkWell(
                                   child: TextWidget(
                                       "Repeat Order",
                                       false,
                                       FontWeight.w600,
                                       1.1,
                                       Constants.sapgreen,
                                       TextAlign.center,
                                       'pnregular'),
                                   onTap: (){
                                     Navigator.of(context).push(MaterialPageRoute(
                                         builder: (BuildContext context) => order_Details())
                                     );
                                   },
                                 ),
                               ],
                             ),
                           )
                          ],
                        ),
                      );
                    }
                ),
              )



            ],
          ),

        )

      ),
    );
  }
}
