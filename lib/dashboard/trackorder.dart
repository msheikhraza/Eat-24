import 'package:eat_twenty_four/components/const.dart';
import 'package:eat_twenty_four/components/textwidget.dart';
import 'package:flutter/material.dart';


class Track_order extends StatefulWidget {


  @override
  _Track_orderState createState() => _Track_orderState();
}

class _Track_orderState extends State<Track_order> {
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

                          Navigator.pop(context);

                        },

                      ),
                      Spacer(),
                      TextWidget(
                          "Track Your Order",
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
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Icon(
                      Icons.location_on,
                      color: Constants.booger,
                      size: 45,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: InkWell(
                      child: Container(
                        height: MediaQuery.of(context).size.height/3.5,
                        width: MediaQuery.of(context).size.width/1.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Constants.booger,


                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.watch_later_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 8,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 10,),
                                      TextWidget(
                                          "11:10 PM",
                                          false,
                                          FontWeight.w600,
                                          1.1,
                                          Colors.white,
                                          TextAlign.center,
                                          'pnregular'),
                                      SizedBox(height: 5,),
                                      TextWidget(
                                          "Delivery Time",
                                          false,
                                          FontWeight.normal,
                                          1.1,
                                          Colors.white,
                                          TextAlign.center,
                                          'pnregular'),
                                    ],
                                  ),

                                  Spacer(),

                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 10,),

                                      TextWidget(
                                          "Gaur City 2",
                                          false,
                                          FontWeight.w600,
                                          1.1,
                                          Colors.white,
                                          TextAlign.center,
                                          'pnregular'),
                                      SizedBox(height: 5,),
                                      TextWidget(
                                          "Delivery Place",
                                          false,
                                          FontWeight.normal,
                                          1.1,
                                          Colors.white,
                                          TextAlign.center,
                                          'pnregular'),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              color: Constants.faddedred,
                              thickness: 1.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),

                              child: Row(
                                children: [
                                  Container(
                                    height: 65.0,
                                    width: 65.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),

                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/trackorderprofile.png'

                                          ),
                                          fit: BoxFit.cover
                                      ),


                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [

                                      TextWidget(
                                          "Rohan Kunar",
                                          false,
                                          FontWeight.w600,
                                          1.1,
                                          Colors.white,
                                          TextAlign.center,
                                          'pnregular'),
                                      TextWidget(
                                          "Delivery Boy",
                                          false,
                                          FontWeight.normal,
                                          1.0,
                                          Colors.white,
                                          TextAlign.center,
                                          'pnregular'),
                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 65.0,
                                    width: 65.0,
                                    child: Stack(
                                    children: [
                                      Container(
                                        height: 65.0,
                                        width: 65.0,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20.0),
                                            color: Colors.white.withOpacity(0.5)
                                          //
                                          // image: DecorationImage(
                                          //     image: AssetImage(
                                          //         'assets/trackorderprofile.png'
                                          //
                                          //     ),
                                          //     fit: BoxFit.cover
                                          // ),


                                        ),

                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Icon(Icons.call,
                                        color: Colors.white,
                                        ),
                                      )

                                    ],
                                    ),
                                  ),
                                ],
                              ),
                            )




                          ],
                        ),

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
