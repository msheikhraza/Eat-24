import 'package:eat_twenty_four/components/const.dart';
import 'package:eat_twenty_four/components/textwidget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'manage_address.dart';
import 'orders.dart';

class profile extends StatefulWidget {


  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {

  bool isSwitched = false;
  bool isSwitched1 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/signupbg.png",
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,

                ),
              ),

              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            color: Constants.booger,
                          ),
                          Spacer(),
                          TextWidget(
                              "Profile",
                              false,
                              FontWeight.normal,
                              1.4,
                              Colors.white,
                              TextAlign.center,
                              'pnbold'),
                          Spacer(),
                          Icon(
                            Icons.notifications_none,
                            color:  Colors.white,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 81,
                      width: 150,
                      child: Stack(
                        children: [
                          Align(
                            child: Container(
                              height: 91.0,
                              width: 91.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/profile.png'),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle,
                                  // color: Colors.red,
                                  // border: Border.all(
                                  //     color: Constants.APP_DARK_BLUE_COLOR,
                                  //     width: 1),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Colors.grey.withOpacity(0.1),
                                  //     spreadRadius: 8,
                                  //     blurRadius: 5,
                                  //   ),
                                  // ]
                              ),
                            ),
                            alignment: Alignment.center,
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: InkWell(
                                child: Container(
                                  width: 50,
                                  height: 19,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                      border: Border.all(
                                          color: Constants.sapgreen,
                                        width: 2
                                      ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Center(
                                    child:  TextWidget(
                                        "EDIT",
                                        false,
                                        FontWeight.w600,
                                        0.7,
                                        Constants.faddedred,
                                        TextAlign.center,
                                        'pnregular'),
                                  ),
                                ),

                                onTap: (){
                                  _editprofilesheet(context);
                                },
                              ),
                            ),
                          )

                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Align(
                      alignment: Alignment.center,
                      child: TextWidget(
                          "Ankit Bhatnagar",
                          false,
                          FontWeight.w600,
                          1.3,
                          Colors.white,
                          TextAlign.center,
                          'pnregular'),
                    ),
                    SizedBox(height: 5,),
                    Align(
                      alignment: Alignment.center,
                      child: TextWidget(
                          "9990666464  -  creativeankitb@gmail.com",
                          false,
                          FontWeight.normal,
                          0.8,
                          Colors.white,
                          TextAlign.center,
                          'pnregular'),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on_outlined,color: Colors.white.withOpacity(0.8),),
                          TextWidget(
                              "Gaur City, Noida",
                              false,
                              FontWeight.normal,
                              0.8,
                              Colors.white,
                              TextAlign.center,
                              'pnregular'),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                     height: MediaQuery.of(context).size.height/1.2,
                      width: MediaQuery.of(context).size.width/1.15,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget(
                                  "My Account",
                                  false,
                                  FontWeight.w600,
                                  1.5,
                                  Constants.purplebrown,
                                  TextAlign.center,
                                  'pnbold'),
                            ),
                          ),
                          SizedBox(height: 20,),
                          InkWell(
                            child: Row(
                              children: [
                                SizedBox(width: 20,),
                                SvgPicture.asset("assets/loc.svg"),
                                SizedBox(width: 20,),
                                TextWidget(
                                    "Manage Address",
                                    false,
                                    FontWeight.normal,
                                    1.1,
                                    Constants.purplebrown,
                                    TextAlign.center,
                                    'pnregular'),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                color: Constants.greyishthree,
                                  size: 15,
                                ),
                                SizedBox(width: 20,),

                              ],
                            ),
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) => MAnage_address()));
                            },
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              SvgPicture.asset("assets/payment.svg"),
                              SizedBox(width: 20,),
                              TextWidget(
                                  "Payment",
                                  false,
                                  FontWeight.normal,
                                  1.1,
                                  Constants.purplebrown,
                                  TextAlign.center,
                                  'pnregular'),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Constants.greyishthree,
                                size: 15,
                              ),
                              SizedBox(width: 20,),

                            ],
                          ),
                          SizedBox(height: 20,),
                          InkWell(
                            child: Row(
                              children: [
                                SizedBox(width: 20,),
                                SvgPicture.asset("assets/orders.svg"),
                                SizedBox(width: 20,),
                                TextWidget(
                                    "Orders",
                                    false,
                                    FontWeight.normal,
                                    1.1,
                                    Constants.purplebrown,
                                    TextAlign.center,
                                    'pnregular'),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Constants.greyishthree,
                                  size: 15,
                                ),
                                SizedBox(width: 20,),

                              ],
                            ),
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) => orders(0)));
                            },
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              SvgPicture.asset("assets/fav.svg"),
                              SizedBox(width: 20,),
                              TextWidget(
                                  "Favourite",
                                  false,
                                  FontWeight.normal,
                                  1.1,
                                  Constants.purplebrown,
                                  TextAlign.center,
                                  'pnregular'),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Constants.greyishthree,
                                size: 15,
                              ),
                              SizedBox(width: 20,),

                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              SvgPicture.asset("assets/offers.svg"),
                              SizedBox(width: 20,),
                              TextWidget(
                                  "Offers",
                                  false,
                                  FontWeight.normal,
                                  1.1,
                                  Constants.purplebrown,
                                  TextAlign.center,
                                  'pnregular'),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Constants.greyishthree,
                                size: 15,
                              ),
                              SizedBox(width: 20,),

                            ],
                          ),


                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget(
                                  "Notifications",
                                  false,
                                  FontWeight.w600,
                                  1.5,
                                  Constants.purplebrown,
                                  TextAlign.center,
                                  'pnbold'),
                            ),
                          ),

                          SizedBox(height: 20,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              SvgPicture.asset("assets/ghanti.svg"),
                              SizedBox(width: 20,),
                              TextWidget(
                                  "Push Notifications",
                                  false,
                                  FontWeight.normal,
                                  1.1,
                                  Constants.purplebrown,
                                  TextAlign.center,
                                  'pnregular'),
                              Spacer(),
                              Switch(
                                value: isSwitched,
                                onChanged: (value){
                                  setState(() {
                                    isSwitched=value;
                                    print(isSwitched);
                                  });
                                },
                                activeTrackColor: Constants.booger,
                                activeColor: Colors.white,
                              ),
                              SizedBox(width: 20,),

                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              SvgPicture.asset("assets/ghanti.svg"),
                              SizedBox(width: 20,),
                              TextWidget(
                                  "Promotional Notifications",
                                  false,
                                  FontWeight.normal,
                                  1.1,
                                  Constants.purplebrown,
                                  TextAlign.center,
                                  'pnregular'),
                              Spacer(),
                              Switch(
                                value: isSwitched1,
                                onChanged: (value){
                                  setState(() {
                                    isSwitched1=value;
                                    print(isSwitched1);
                                  });
                                },
                                activeTrackColor: Constants.booger,
                                activeColor: Colors.white,
                              ),
                              SizedBox(width: 20,),

                            ],
                          ),

                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: TextWidget(
                                  "More",
                                  false,
                                  FontWeight.w600,
                                  1.5,
                                  Constants.purplebrown,
                                  TextAlign.center,
                                  'pnbold'),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              SvgPicture.asset("assets/help.svg"),
                              SizedBox(width: 20,),
                              TextWidget(
                                  "Help",
                                  false,
                                  FontWeight.normal,
                                  1.1,
                                  Constants.purplebrown,
                                  TextAlign.center,
                                  'pnregular'),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Constants.greyishthree,
                                size: 15,
                              ),
                              SizedBox(width: 20,),

                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              SvgPicture.asset("assets/logout.svg"),
                              SizedBox(width: 20,),
                              TextWidget(
                                  "Logout",
                                  false,
                                  FontWeight.normal,
                                  1.1,
                                  Constants.purplebrown,
                                  TextAlign.center,
                                  'pnregular'),


                            ],
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 5,),


                  ],
                ),
              ),



            ],
          ),


        ),
      ),
    );
  }}

  _editprofilesheet(context){

    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,

        isScrollControlled: true,
        builder: (context) {
          return StatefulBuilder(
              builder: (BuildContext context, void Function(void Function()) setState/*You can rename this!*/) {
                return Container(
                  height: MediaQuery.of(context).size.height / 1.15,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0)),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: new Wrap(
                      children: <Widget>[
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              height: 5,
                              width: 82,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[300],
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/profile.png'),
                                    fit: BoxFit.cover),
                                shape: BoxShape.circle,
                                // color: Colors.red,
                                // border: Border.all(
                                //     color: Constants.APP_DARK_BLUE_COLOR,
                                //     width: 1),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.grey.withOpacity(0.1),
                                //     spreadRadius: 8,
                                //     blurRadius: 5,
                                //   ),
                                // ]
                              ),
                            ),
                          SizedBox(width: 10,),
                            TextWidget("Change Avatar", false, FontWeight.w500, 1.0,
                                Constants.faddedred, TextAlign.center, 'pnregular'),
                            Spacer(),
                            TextWidget("Save", false, FontWeight.w600, 1.1,
                                Constants.booger, TextAlign.center, 'pnregular'),
                          ],
                        ),




                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextWidget(
                              "Full Name",
                              false, FontWeight.w500,
                              1.1,
                              Constants.greyishthree,
                              TextAlign.center, 'pnregular'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width/1.1,
                            height: 50,
                            decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  //  color: Color.fromRGBO(226 ,230 ,236,1),
                                    color: Constants.whitenine
                                )
                            ),
                            child: TextField(
                              style: TextStyle(
                                // color: Color.fromRGBO(202 ,202 ,202,1),
                                color:  Constants.purplebrown,

                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 10,right: 10),


                                hintText: 'Ankit Bhatnagar',
                                hintStyle: TextStyle(
                                  color:  Constants.purplebrown,
                                  fontSize: 16,
                                  fontFamily: 'pnregular'
                                ),

                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextWidget(
                              "Email Address",
                              false, FontWeight.w500,
                              1.1,
                              Constants.greyishthree,
                              TextAlign.center, 'pnregular'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width/1.1,
                            height: 50,
                            decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  //  color: Color.fromRGBO(226 ,230 ,236,1),
                                    color: Constants.whitenine
                                )
                            ),
                            child: TextField(
                              style: TextStyle(
                                // color: Color.fromRGBO(202 ,202 ,202,1),
                                color:  Constants.purplebrown,

                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 10,right: 10),


                                hintText: 'creativeankitb@gmail.com',
                                hintStyle: TextStyle(
                                    color:  Constants.purplebrown,
                                    fontSize: 16,
                                    fontFamily: 'pnregular'
                                ),

                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextWidget(
                              "Phone Number",
                              false, FontWeight.w500,
                              1.1,
                              Constants.greyishthree,
                              TextAlign.center, 'pnregular'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width/1.1,
                            height: 50,
                            decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  //  color: Color.fromRGBO(226 ,230 ,236,1),
                                    color: Constants.whitenine
                                )
                            ),
                            child: TextField(
                              style: TextStyle(
                                // color: Color.fromRGBO(202 ,202 ,202,1),
                                color:  Constants.purplebrown,

                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 10,right: 10),


                                hintText: '9990666464',
                                hintStyle: TextStyle(
                                    color:  Constants.purplebrown,
                                    fontSize: 16,
                                    fontFamily: 'pnregular'
                                ),

                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextWidget(
                              "Password",
                              false, FontWeight.w500,
                              1.1,
                              Constants.greyishthree,
                              TextAlign.center, 'pnregular'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width/1.1,
                            height: 50,
                            decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  //  color: Color.fromRGBO(226 ,230 ,236,1),
                                    color: Constants.whitenine
                                )
                            ),
                            child: TextField(
                              style: TextStyle(
                                // color: Color.fromRGBO(202 ,202 ,202,1),
                                color:  Constants.purplebrown,

                              ),
                              obscureText: true,

                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,


                                contentPadding: EdgeInsets.only(left: 10,right: 10),


                                hintText: '**********',
                                hintStyle: TextStyle(
                                    color:  Constants.purplebrown,
                                    fontSize: 16,
                                    fontFamily: 'pnregular'
                                ),

                              ),
                            ),
                          ),
                        ),





                      ],
                    ),
                  ),
                );
              });
        });
  }
