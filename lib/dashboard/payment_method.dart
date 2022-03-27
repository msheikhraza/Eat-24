import 'package:eat_twenty_four/components/const.dart';
import 'package:eat_twenty_four/components/textwidget.dart';
import 'package:eat_twenty_four/dialogbox/dialogbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:dotted_line/dotted_line.dart';
import 'add_address.dart';
import 'addcards.dart';


class Payment_method extends StatefulWidget {


  @override
  _Payment_methodState createState() => _Payment_methodState();
}

class _Payment_methodState extends State<Payment_method> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
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
                                child: add_address(),
                              )
                          );
                        },

                      ),
                      SizedBox(width: 10,),
                      TextWidget(
                          "Total Bill : \$39.00",
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
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Row(

                    children: [
                      Column(
                        children: [
                          SvgPicture.asset("assets/toloc.svg"),

                          DottedLine(
                            direction: Axis.vertical,
                            lineLength: 30,
                            lineThickness: 1.0,
                            dashLength: 4.0,
                            dashColor: Constants.purplebrown,
                            dashRadius: 0.0,
                            dashGapLength: 4.0,
                            dashGapColor: Colors.transparent,
                            dashGapRadius: 0.0,
                          ),
                          SvgPicture.asset("assets/fromloc.svg"),
                        ],
                      ),
                      Spacer(),
                      Container(
                        width: MediaQuery.of(context).size.width/1.3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                    "Chawala Chicken",
                                    false,
                                    FontWeight.normal,
                                    1.0,
                                    Constants.purplebrown,
                                    TextAlign.center,
                                    'pnbold'),
                                SizedBox(height: 5,),
                                TextWidget(
                                    "3 Items |  Delivery Time 50 Mins",
                                    false,
                                    FontWeight.normal,
                                    0.9,
                                    Constants.greyishthree,
                                    TextAlign.center,
                                    'pnregular'),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                    "Home Address",
                                    false,
                                    FontWeight.normal,
                                    1.0,
                                    Constants.purplebrown,
                                    TextAlign.center,
                                    'pnbold'),
                                SizedBox(height: 5,),
                                TextWidget(
                                    "E Block West Gaur City 1, Noida Extension, Noida, Phase-2, Greater Noida, Uttar Pradesh 201012",
                                    false,
                                    FontWeight.normal,
                                    0.9,
                                    Constants.greyishthree,
                                    TextAlign.left,
                                    'pnregular'),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Divider(),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextWidget(
                          "Credit/Debit Cards",
                          false,
                          FontWeight.normal,
                          1.7,
                          Constants.purplebrown,
                          TextAlign.center,
                          'pnbold'),
                      Spacer(),
                      InkWell(
                        child: TextWidget(
                            "Add New Card",
                            false,
                            FontWeight.normal,
                            1.1,
                            Constants.booger,
                            TextAlign.center,
                            'pnbold'),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => addcard()
                          ));
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      SvgPicture.asset("assets/creditcard.svg"),

                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                              "************1234",
                              false,
                              FontWeight.normal,
                              1.1,
                              Constants.purplebrown,
                              TextAlign.center,
                              'pnbold'),

                          TextWidget(
                              "Ankit Bhatnagar Visa Debit Card",
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
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      SvgPicture.asset("assets/creditcard.svg"),

                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                              "************4321",
                              false,
                              FontWeight.normal,
                              1.1,
                              Constants.purplebrown,
                              TextAlign.center,
                              'pnbold'),

                          TextWidget(
                              "Ankit Bhatnagar Visa Debit Card",
                              false,
                              FontWeight.normal,
                              1.1,
                              Constants.greyishthree,
                              TextAlign.center,
                              'pnregular'),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.check,
                      color: Constants.weirdgreen,
                        size: 20,
                      ),
                      SizedBox(width: 10,),


                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Divider(
                    color: Constants.weirdgreen,

                  ),
                ),

                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextWidget(
                        "Save and Pay via Cards.",
                        false,
                        FontWeight.normal,
                        0.9,
                        Constants.greyishthree,
                        TextAlign.center,
                        'pnregular'),
                  ),
                ),
                SizedBox(height: 7,),

                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Row(
                    children: [

                    Image.asset(
                    "assets/mastercard.png",
                    width: 50,
                    height: 30,
                  ),
                    SizedBox(width: 5,),
                    Image.asset(
                      "assets/visa.png",
                      width: 50,
                      height: 30,
                    ),
                      SizedBox(width: 5,),
                    Image.asset(
                      "assets/maestero.png",
                      width: 50,
                      height: 30,
                    ),
                      SizedBox(width: 5,),
                    Image.asset(
                        "assets/americanexpress.png",
                      width: 50,
                      height: 30,
                    ),
                      Spacer(),

                  ],),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextWidget(
                        "Wallet Method",
                        false,
                        FontWeight.normal,
                        1.7,
                        Constants.purplebrown,
                        TextAlign.center,
                        'pnbold'),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        child: SvgPicture.asset("assets/paypal.svg",
                        height: 30,
                          width: 30,
                        ),
                      ),
                      SizedBox(width: 30,),
                      TextWidget(
                          "Paypal",
                          false,
                          FontWeight.normal,
                          1.2,
                          Constants.purplebrown,
                          TextAlign.center,
                          'pnbold'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        child: Image.asset("assets/amazonpay.png",
                          height: 30,
                          width: 30,
                        ),
                      ),
                      SizedBox(width: 30,),
                      TextWidget(
                          "Amazon pay",
                          false,
                          FontWeight.normal,
                          1.2,
                          Constants.purplebrown,
                          TextAlign.center,
                          'pnbold'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        child: SvgPicture.asset("assets/applepay.svg",
                          height: 30,
                          width: 30,
                        ),
                      ),
                      SizedBox(width: 30,),
                      TextWidget(
                          "Apple Pay",
                          false,
                          FontWeight.normal,
                          1.2,
                          Constants.purplebrown,
                          TextAlign.center,
                          'pnbold'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Divider(),
                ),
                Spacer(),
                InkWell(
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.15,
                    height: 56,
                    child: Center(
                      child:   TextWidget(
                          "Pay Now".toUpperCase(),
                          false,
                          FontWeight.w600 ,
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
                  onTap: (){
                    showDialog(context: context,
                        builder: (BuildContext context){
                          return CustomDialogBox(
                            title: "Your order is successfull",
                            descriptions: "You can track the order delivery in the “Orders” section.",
                            text: "Go to Orders".toUpperCase(),
                          );
                        }
                    );
                  },
                ),
                Spacer(),





              ],
            ),
          ),
        ),

      ),
    );
  }
}
