import 'package:eat_twenty_four/components/const.dart';
import 'package:eat_twenty_four/components/textwidget.dart';
import 'package:eat_twenty_four/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class order_Details extends StatefulWidget {


  @override
  _order_DetailsState createState() => _order_DetailsState();
}

class _order_DetailsState extends State<order_Details> {
  final List<cartitems> cartitemslist =[
    cartitems(cartitemsimg:"assets/fodimg1.png",cartitemsname: "Easy Spanish Chicken",cartitemsquantity: "1",cartitemsprice:"20.00"),
    cartitems(cartitemsimg:"assets/details.png",cartitemsname: "Paradise Hyderabadi Biryani",cartitemsquantity: "5",cartitemsprice:"16.00"),
    cartitems(cartitemsimg:"assets/fodimg1.png",cartitemsname: "Butter Naan",cartitemsquantity: "1",cartitemsprice:"16.00"),

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

          body:Container(
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

                Container(
                  height: MediaQuery.of(context).size.height/1.18,
                  child: Column(


                      children: [
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
                            TextWidget(
                                "Delivered".toUpperCase(),
                                false,
                                FontWeight.w600,
                                1.1,
                                Constants.sapgreen,
                                TextAlign.center,
                                'pnregular'),

                          ],
                        ),
                      ),
                        SizedBox(height: 10,),
                      Container(
                        height: MediaQuery.of(context).size.height/3.6,

                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: cartitemslist.length-1,

                          itemBuilder: (BuildContext ctxt, int Index) {
                            return Container(
                              height: MediaQuery.of(context).size.height/8.0,


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
                                            1.0,
                                            Constants.purplebrown,
                                            TextAlign.center,
                                            'pnbold'),
                                        TextWidget(
                                            cartitemslist[Index].cartitemsquantity+" x",
                                            false,
                                            FontWeight.normal,
                                            1.0,
                                            Constants.purplebrown,
                                            TextAlign.center,
                                            'pnregular'),
                                      ],
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: TextWidget(
                                          cartitemslist[Index].cartitemsprice,
                                          false,
                                          FontWeight.w600,
                                          1.0,
                                          Constants.purplebrown,
                                          TextAlign.center,
                                          'pnregular'),
                                    ),

                                  ],
                                ),
                              ),
                            );
                          },

                        ),
                        color: Colors.white,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: Divider(),
                      ),
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
                      Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: Divider(),
                      ),

                     Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(
                          children: [
                            TextWidget(
                                "Paid",
                                false,
                                FontWeight.w600,
                                1.8,
                                Constants.purplebrown,
                                TextAlign.center,
                                'pnregular'),
                 Spacer(),
                            TextWidget(
                                "\$29.00",
                                false,
                                FontWeight.w600,
                                1.6,
                                Constants.purplebrown,
                                TextAlign.center,
                                'pnregular'),
                          ],
                        ),
                      ),

                      Spacer(),
                      Text(
                        "Give your review",
                        style: TextStyle(
                          fontSize: 15,
                          color: Constants.frenchblue,
                          fontWeight: FontWeight.w600,
                          fontFamily: "pnregular"
                        ),),
                      SizedBox(height: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width/1.2,
                        height: 56,
                        child: Center(
                          child:   TextWidget(
                              "Repeat Order",
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
                )



              ],
            ),

          )

      ),
    );
  }
}
