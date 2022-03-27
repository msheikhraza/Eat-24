import 'dart:ui';

import 'package:eat_twenty_four/components/textwidget.dart';
import 'package:eat_twenty_four/dashboard/productdetails.dart';
import 'package:eat_twenty_four/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:eat_twenty_four/components/const.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';

import 'delivery_location.dart';
class cart extends StatefulWidget {

     int index;
     cart(this.index);
  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {

  final List<cartitems> cartitemslist =[
    cartitems(cartitemsimg:"assets/fodimg1.png",cartitemsname: "Easy Spanish Chicken",cartitemsquantity: "1",cartitemsprice:"20.00"),
    cartitems(cartitemsimg:"assets/details.png",cartitemsname: "Paradise Hyderabadi Biryani",cartitemsquantity: "1",cartitemsprice:"13.00"),
    cartitems(cartitemsimg:"assets/fodimg1.png",cartitemsname: "Butter Naan",cartitemsquantity: "1",cartitemsprice:"16.00"),

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body:widget.index==0?Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                        color: Constants.booger,
                    ),
                    Spacer(),
                    TextWidget(
                        "My Cart",
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
              SvgPicture.asset(
                'assets/emptycart.svg',

              ),
              SizedBox(height: 20,),
              TextWidget(
                  "Cart Empty",
                  false,
                  FontWeight.normal,
                  2.0,
                  Constants.purplebrown,
                  TextAlign.center,
                  'pnbold'),
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

        ):
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: SingleChildScrollView(
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

                          Navigator.push(context,
                              PageTransition(
                                  type: PageTransitionType.topToBottom,
                                  child: productdetails()
                              )
                          );
                        },
                      ),
                      Spacer(),
                      TextWidget(
                          "My Cart",
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
                    height: MediaQuery.of(context).size.height/2.2,
                    child: new ListView.builder(
                        itemCount: cartitemslist.length,
                        itemBuilder: (BuildContext ctxt, int Index) {
                          return Slidable(
                            actionPane: SlidableDrawerActionPane(),

                            actionExtentRatio: 0.25,
                            child: new Container(
                              height: MediaQuery.of(context).size.height/6.8,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),

                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
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
                                          width:66,
                                          height:66,
                                        ),
                                      ),
                                    ),
                                SizedBox(width: 20,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        TextWidget(
                                            cartitemslist[Index].cartitemsname,
                                            false,
                                            FontWeight.normal,
                                            1.1,
                                            Constants.purplebrown,
                                            TextAlign.center,
                                            'pnbold'),

                                        Container(
                                          width: 80,
                                            height: 30,

                                            decoration: BoxDecoration(

                                                shape: BoxShape.rectangle,
                                                borderRadius: BorderRadius.circular(10.0),
                                                border: Border.all(
                                                    color: Constants.greyishthree.withOpacity(0.5)
                                                )

                                            ),


                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              TextWidget(
                                                  "-".toUpperCase(),
                                                  false,
                                                  FontWeight.w600,
                                                  1.6,
                                                  Constants.sapgreen,
                                                  TextAlign.left,
                                                  'pnlight'),

                                              TextWidget(
                                                  cartitemslist[Index].cartitemsquantity,
                                                  false,
                                                  FontWeight.w600,
                                                  1.5,
                                                  Constants.faddedred,
                                                  TextAlign.left,
                                                  'pnlight'),

                                              TextWidget(
                                                  "+".toUpperCase(),
                                                  false,
                                                  FontWeight.w600,
                                                  1.5,
                                                  Constants.faddedred,
                                                  TextAlign.left,
                                                  'pnlight'),

                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.more_horiz,
                                          color: Constants.pinkishgreay,

                                        ),
                                        TextWidget(
                                            "\$"+cartitemslist[Index].cartitemsprice,
                                            false,
                                            FontWeight.normal,
                                            1.0,
                                            Constants.purplebrown,
                                            TextAlign.center,
                                            'pnbold'),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            secondaryActions: <Widget>[

                              IconSlideAction(

                             iconWidget: Image.asset("assets/garbage.png"),
                      //          onTap: () => _showSnackBar('Delete'),
                              ),
                            ],


                          );
                        }
                    )
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/applycoupen.svg"),
                  SizedBox(width: 30,),
                      TextWidget(
                          "Apply Coupon",
                          false,
                          FontWeight.normal,
                          1.2,
                          Constants.purplebrown,
                          TextAlign.center,
                          'pnregular'),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Constants.greyishthree,
                      ),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                  child: Row(
                    children: [
                      TextWidget(
                          "Item Total",
                          false,
                          FontWeight.normal,
                          1.1,
                          Constants.greyishthree,
                          TextAlign.center,
                          'pnregular'),
                      Spacer(),
                      TextWidget(
                          "\$49.00",
                          false,
                          FontWeight.normal,
                          1.21,
                          Constants.purplebrown,
                          TextAlign.center,
                          'pnbold'),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                  child: Row(
                    children: [
                      TextWidget(
                          "Discount",
                          false,
                          FontWeight.normal,
                          1.1,
                          Constants.greyishthree,
                          TextAlign.center,
                          'pnregular'),
                      Spacer(),
                      TextWidget(
                          "\$10.00",
                          false,
                          FontWeight.normal,
                          1.21,
                          Constants.purplebrown,
                          TextAlign.center,
                          'pnbold'),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                  child: Row(
                    children: [
                      TextWidget(
                          "Delivery Fee",
                          false,
                          FontWeight.normal,
                          1.1,
                          Constants.booger,
                          TextAlign.center,
                          'pnregular'),
                      Spacer(),
                      TextWidget(
                          "FREE",
                          false,
                          FontWeight.normal,
                          1.21,
                          Constants.booger,
                          TextAlign.center,
                          'pnregular'),

                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                  child: Row(
                    children: [
                      TextWidget(
                          "Total",
                          false,
                          FontWeight.w600,
                          2.2,
                          Constants.purplebrown,
                          TextAlign.center,
                          'pnregular'),
                      Spacer(),
                      TextWidget(
                          "\$39.00",
                          false,
                          FontWeight.normal,
                          2.2,
                          Constants.purplebrown,
                          TextAlign.center,
                          'pnbold'),

                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                  child: Row(
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
                              "Deliver at : Home",
                              false,
                              FontWeight.normal,
                              1.1,
                              Constants.purplebrown,
                              TextAlign.center,
                              'pnbold'),
                          SizedBox(height: 5,),
                          TextWidget(
                              "Gaur City 1 Club",
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
                          "Change".toUpperCase(),
                          false,
                          FontWeight.w600,
                          1.21,
                          Constants.faddedred,
                          TextAlign.center,
                          'pnregular'),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 56,
                    child: Row(
                      children: [
                        SizedBox(width: 30,),
                        TextWidget(
                            "Confirm Order".toUpperCase(),
                            false,
                            FontWeight.w600 ,
                            1.3,
                            Colors.white,
                            TextAlign.center,
                            'pnregular'),
                        Spacer(),
                        SvgPicture.asset(
                          "assets/confirmordericon.svg",
                          height: 25,
                          width: 35 ,


                        ),
                        SizedBox(width: 30,),
                      ],
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
                            child: Delivery_Location()
                        )
                    );
                  },
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),

        )

      ),
    );
  }
}
