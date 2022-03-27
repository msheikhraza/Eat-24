import 'package:eat_twenty_four/components/const.dart';
import 'package:eat_twenty_four/components/textwidget.dart';
import 'package:eat_twenty_four/dashboard/payment_method.dart';
import 'package:eat_twenty_four/models/models.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'delivery_location.dart';

class add_address extends StatefulWidget {


  @override
  _add_addressState createState() => _add_addressState();
}

class _add_addressState extends State<add_address> {
  final List<chooseaddress> chooselocationlist =[
    chooseaddress(Icons.house_outlined, "Home", false),
    chooseaddress(Icons.home_work_outlined, "Office", false),
    chooseaddress(Icons.location_on_outlined, "Other", false),

  ];

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
                                child: Delivery_Location(),
                              )
                          );
                        },

                      ),
                      Spacer(),
                      TextWidget(
                          "Add Address",
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
                    alignment: Alignment.topCenter,
                    child: Container(
                      child: Icon(
                        Icons.location_on,
                        color: Constants.booger,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    child: Container(
                      height: MediaQuery.of(context).size.height/1.9,
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
                                  "Delivery Location",
                                  false,
                                  FontWeight.normal,
                                  1.4,
                                  Constants.purplebrown,
                                  TextAlign.center,
                                  'pnbold'),
                            ),
                            TextWidget(
                                "E Block West Gaur City 1, Noida Extension, Noida, Phase  -2, Greater Noida, Uttar Pradesh 201012",
                                false,
                                FontWeight.normal,
                                1.0,
                                Constants.greyishthree,
                                TextAlign.left,
                                'pnregular'),

                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: MediaQuery.of(context).size.width/1.2,
                                height: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Constants.greyishthree.withOpacity(0.5)
                                  )

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8,top: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextWidget(
                                          "House / Flat / Block No / Tower / Socitey",
                                          false,
                                          FontWeight.normal,
                                          0.9,
                                          Constants.greyishthree,
                                          TextAlign.center,
                                          'pnregular'),
                                      SizedBox(height: 5,),
                                      TextWidget(
                                          "Gaur City 1 Club",
                                          false,
                                          FontWeight.normal,
                                          0.9,
                                          Constants.purplebrown,
                                          TextAlign.center,
                                          'pnbold'),


                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: MediaQuery.of(context).size.width/1.2,
                                height: 55,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Constants.greyishthree.withOpacity(0.5)
                                    )

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8,top: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextWidget(
                                          "Landmark",
                                          false,
                                          FontWeight.normal,
                                          0.9,
                                          Constants.greyishthree,
                                          TextAlign.center,
                                          'pnregular'),
                                      SizedBox(height: 5,),
                                      TextWidget(
                                          "Gaur International School",
                                          false,
                                          FontWeight.normal,
                                          0.9,
                                          Constants.purplebrown,
                                          TextAlign.center,
                                          'pnbold'),


                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget(
                                  "Save As",
                                  false,
                                  FontWeight.normal,
                                  1.4,
                                  Constants.purplebrown,
                                  TextAlign.center,
                                  'pnbold'),
                            ),
                            Container(
                              height: 50,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: chooselocationlist.length,
                                  itemBuilder: (context, index) {
                                    return     InkWell(
                                      child: Padding(
                                        padding: const EdgeInsets.only(right: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 43,
                                              width: 87,
                                              decoration: BoxDecoration(
                                                color: chooselocationlist[index].isselected?Constants.purplebrown:Colors.white,
                                                border: Border.all(
                                                  color: Constants.purplebrown
                                                ),
                                                borderRadius: BorderRadius.circular(10),

                                              ),
                                              child: Container(

                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Icon(
                                                        chooselocationlist[index].icon,
                                                      color: chooselocationlist[index].isselected?Colors.white:Constants.purplebrown,
                                                    ),
                                                    TextWidget(
                                                        chooselocationlist[index].title,
                                                        false,
                                                        FontWeight.w600,
                                                        1.0,
                                                        chooselocationlist[index].isselected?Colors.white:Constants.purplebrown,
                                                        TextAlign.center,
                                                        'pnregular'),
                                                  ],
                                                ),
                                              ),

                                            ),

                                          ],
                                        ),
                                      ),
                                      onTap: (){

                                        setState(() {
                                          if(!chooselocationlist[index].isselected)
                                          {

                                            var temp=index;
                                            for(int i =0;i<chooselocationlist.length;i++)
                                            {
                                              if(temp==i){
                                                setState(() {
                                                  chooselocationlist[i].isselected=true;
                                                });


                                              }
                                              else{
                                                setState(() {
                                                  chooselocationlist[i].isselected=false;
                                                });

                                              }

                                            }

                                          }
                                          else{
                                            setState(() {
                                              chooselocationlist[index].isselected=false;
                                            });

                                          }
                                        });

                                      },
                                    );
                                  }),
                            ),


                            InkWell(
                              child: Container(
                                width: MediaQuery.of(context).size.width/1.15,
                                height: 56,
                                child: Center(
                                  child:   TextWidget(
                                      "Save Address".toUpperCase(),
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
                                        child: Payment_method()
                                    )
                                );
                              },
                            ),

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
