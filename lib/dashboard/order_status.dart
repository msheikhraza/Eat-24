import 'package:dotted_line/dotted_line.dart';
import 'package:eat_twenty_four/components/const.dart';
import 'package:eat_twenty_four/components/textwidget.dart';
import 'package:eat_twenty_four/dashboard/trackorder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Order_Status extends StatefulWidget {

  @override
  _Order_StatusState createState() => _Order_StatusState();
}

class _Order_StatusState extends State<Order_Status> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

          body:SingleChildScrollView(
            child: Container(
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
                            "Order Detail",
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
                    padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 5),
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


                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset("assets/orderrecived.svg"),
                            SizedBox(width: 20,),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                    "Order received",
                                    false,
                                    FontWeight.normal,
                                    1.1,
                                    Constants.greyishthree,
                                    TextAlign.center,
                                    'pnregular'),
                                SizedBox(height: 5,),
                                TextWidget(
                                    "10:15, 6 June 2020",
                                    false,
                                    FontWeight.normal,
                                    1.1,
                                    Constants.purplebrown,
                                    TextAlign.center,
                                    'pnbold'),


                              ],
                            ),


                          ],
                        ),


                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: DottedLine(
                              direction: Axis.vertical,
                              lineLength: 150.0,
                              lineThickness: 1.0,
                              dashLength: 10.0,
                              dashColor: Constants.booger,
                              dashRadius: 0.0,
                              dashGapLength: 4.0,
                              dashGapColor: Colors.transparent,
                              dashGapRadius: 0.0,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset("assets/ontheway.svg"),
                            SizedBox(width: 20,),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                    "On the way",
                                    false,
                                    FontWeight.normal,
                                    1.1,
                                    Constants.greyishthree,
                                    TextAlign.center,
                                    'pnregular'),
                                SizedBox(height: 5,),
                                TextWidget(
                                    "10:30, 6 June 2020",
                                    false,
                                    FontWeight.normal,
                                    1.1,
                                    Constants.purplebrown,
                                    TextAlign.center,
                                    'pnbold'),


                              ],
                            ),


                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: DottedLine(
                              direction: Axis.vertical,
                              lineLength: 150.0,
                              lineThickness: 1.0,
                              dashLength: 10.0,
                              dashColor: Constants.booger,
                              dashRadius: 0.0,
                              dashGapLength: 4.0,
                              dashGapColor: Colors.transparent,
                              dashGapRadius: 0.0,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset("assets/orderdelivered.svg"),
                            SizedBox(width: 20,),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                    "Delivered",
                                    false,
                                    FontWeight.normal,
                                    1.1,
                                    Constants.greyishthree,
                                    TextAlign.center,
                                    'pnregular'),
                                SizedBox(height: 5,),
                                TextWidget(
                                    "Time in 45 min",
                                    false,
                                    FontWeight.normal,
                                    1.1,
                                    Constants.purplebrown,
                                    TextAlign.center,
                                    'pnbold'),


                              ],
                            ),


                          ],
                        ),

                      ],
                    ),
                  ),


                  Spacer(),
                  InkWell(
                    child: Text(
                      "Track your order",
                      style: TextStyle(
                          fontSize: 15,
                          color: Constants.frenchblue,
                          fontWeight: FontWeight.w600,
                          fontFamily: "pnregular"
                      ),),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => Track_order())
                      );
                    },
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 56,
                    child: Center(
                      child:   TextWidget(
                          "Confirm Delievery",
                          false,
                          FontWeight.w500 ,
                          1.2,
                          Colors.white,
                          TextAlign.center,
                          'pnregular'),
                    ),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Constants.booger,

                    ),

                  ),
                  SizedBox(height: 10,),




                ],
              ),

            ),
          )

      ),
    );
  }
}
