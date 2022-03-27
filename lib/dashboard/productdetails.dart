import 'package:eat_twenty_four/components/const.dart';
import 'package:eat_twenty_four/components/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

import 'bottomnav.dart';
import 'cartscreen.dart';



class productdetails extends StatefulWidget {
  @override
  _productdetailsState createState() => _productdetailsState();
}

class _productdetailsState extends State<productdetails> {
  PageController controller = PageController();
  int pageIndex = 0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height/2.9,
                child: Stack(
                  children: [
                    PageView(
                      onPageChanged: (value) {
                        setState(() {
                          pageIndex = value;
                        });
                      },
                      controller: controller,
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height / 2,
                          width: MediaQuery.of(context).size.width,
                          child: Image(
                            image: AssetImage('assets/details.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 2,
                          width: MediaQuery.of(context).size.width,
                          child: Image(
                            image: AssetImage('assets/details.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 2,
                          width: MediaQuery.of(context).size.width,
                          child: Image(
                            image: AssetImage('assets/details.png'),
                            fit: BoxFit.fill,
                          ),
                        ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.all(2.0),
                                      height: 12,
                                      width: 12,
                                      decoration: BoxDecoration(
                                          border: pageIndex == 0?
                                          Border.all(color: Colors.white):
                                          Border.all(
                                              color:Colors.transparent
                                          ),

                                          shape: BoxShape.circle,
                                          color: pageIndex == 0
                                              ? Constants.faddedred
                                              : Colors.grey[300]),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(2.0),
                                      height: 12,
                                      width: 12,
                                      decoration: BoxDecoration(
                                          border: pageIndex == 1?
                                          Border.all(color: Colors.white):
                                          Border.all(
                                              color:Colors.transparent
                                          ),
                                          shape: BoxShape.circle,
                                          color: pageIndex == 1
                                              ? Constants.faddedred
                                              : Colors.grey[300]),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(2),
                                      height: 12,
                                      width: 12,
                                      decoration: BoxDecoration(
                                          border: pageIndex == 2?
                                          Border.all(color: Colors.white):
                                          Border.all(
                                              color:Colors.transparent
                                          ),
                                          shape: BoxShape.circle,
                                          color: pageIndex == 2
                                              ? Constants.faddedred
                                              : Colors.grey[300]),
                                    ),

                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50,right: 20),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.favorite,
                            color: Colors.red,

                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          InkWell(
                            child: Icon(Icons.arrow_back_ios,
                            color: Colors.white,
                            ),
                            onTap: (){

                              Navigator.push(context,
                                  PageTransition(
                                    type: PageTransitionType.topToBottom,
                                    child: bottomnav(),
                                  )
                              );
                            },
                          ),
                          Spacer(),
                          Icon(Icons.share_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height/1.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0)),
                    color: Colors.white,
                  ),
                  child: Stack(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width/1.6,
                                  child: TextWidget(
                                      "Paradise Hyderabadi Biryani",
                                      false,
                                      FontWeight.normal,
                                      1.6,
                                      Constants.purplebrown,
                                      TextAlign.left,
                                      'pnbold'),

                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: TextWidget(
                                      "\$13.00",
                                      false,
                                      FontWeight.normal,
                                      1.3,
                                      Constants.faddedred,
                                      TextAlign.left,
                                      'pnbold'),
                                ),
                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Constants.greyishthree,
                                  size: 18,
                                ),
                                TextWidget(
                                    "Chawala Chicken, Crossing republic",
                                    false,
                                    FontWeight.normal,
                                    0.9,
                                    Constants.greyishthree,
                                    TextAlign.center,
                                    'pnregular'),

                                Spacer(),
                                SvgPicture.asset("assets/navcursor.svg")
                              ],
                            ),
                            SizedBox(height: 10,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: MediaQuery.of(context).size.width/3.2,
                                height: 20,
                                child: Center(
                                  child:   TextWidget(
                                      "Free Delievery",
                                      false,
                                      FontWeight.w600 ,
                                      0.8,
                                      Colors.white,
                                      TextAlign.center,
                                      'pnregular'),
                                ),

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Constants.booger,

                                ),

                              ),
                            ),
                            SizedBox(height: 15,),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Constants.booger,
                                  child: Icon(Icons.star,
                                    color: Colors.white,

                                  ),
                                ),
                                SizedBox(width: 5,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextWidget(
                                        "4.7",
                                        false,
                                        FontWeight.normal,
                                        0.9,
                                        Constants.purplebrown,
                                        TextAlign.center,
                                        'pnbold'),
                                    TextWidget(
                                        "Rating",
                                        false,
                                        FontWeight.normal,
                                        0.9,
                                        Constants.greyishthree,
                                        TextAlign.center,
                                        'pnregular'),
                                  ],
                                ),

                                Spacer(),

                                CircleAvatar(
                                  backgroundColor: Constants.sapgreen,
                                  child: Icon(Icons.favorite,
                                    color: Colors.white,

                                  ),
                                ),
                                SizedBox(width: 5,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextWidget(
                                        "200",
                                        false,
                                        FontWeight.normal,
                                        0.9,
                                        Constants.purplebrown,
                                        TextAlign.center,
                                        'pnbold'),
                                    TextWidget(
                                        "Favourite",
                                        false,
                                        FontWeight.normal,
                                        0.9,
                                        Constants.greyishthree,
                                        TextAlign.center,
                                        'pnregular'),
                                  ],
                                ),

                                Spacer(),

                                CircleAvatar(
                                  backgroundColor: Constants.purplebrown  ,
                                  child: Icon(Icons.photo,
                                    color: Colors.white,

                                  ),
                                ),
                                SizedBox(width: 5,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextWidget(
                                        "24",
                                        false,
                                        FontWeight.normal,
                                        0.9,
                                        Constants.purplebrown,
                                        TextAlign.center,
                                        'pnbold'),
                                    TextWidget(
                                        "Photo",
                                        false,
                                        FontWeight.normal,
                                        0.9,
                                        Constants.greyishthree,
                                        TextAlign.center,
                                        'pnregular'),
                                  ],
                                ),


                              ],
                            ),
                            SizedBox(height: 15,),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: TextWidget(
                                  "Details",
                                  false,
                                  FontWeight.normal,
                                  1.6,
                                  Constants.purplebrown,
                                  TextAlign.left,
                                  'pnbold'),
                            ),
                            SizedBox(height: 5,),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 75,
                                height: 2,
                                color: Constants.purplebrown,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              width: MediaQuery.of(context).size.width/1.1,
                              child: TextWidget(
                                  "The name biryani itself brings water in your mouth. It’s a one-pot meat that can fill your stomach itself and it doesn’t need any side dish, however, many enjoy biryani with mirchi ka salan and raita. over the years there have been several variations of this one dish. Here’s one dish that defines the word biryani and based on which, the variations have taken place. Chicken Biryani is one of the most popular dishes that you can find across the world and it’s loaded with various spices. ",
                                  false,
                                  FontWeight.normal,
                                  1.1,
                                  Constants.greyishthree,
                                  TextAlign.left,
                                  'pnregular'),

                            ),
                            SizedBox(height: 100,),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: InkWell(
                          child: Container(
                            width: MediaQuery.of(context).size.width/1.2,
                            height: 56,
                            child: Center(
                              child:   TextWidget(
                                  "Add to cart",
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
                          onTap: (){
                            Navigator.push(context,
                                PageTransition(
                                    type: PageTransitionType.bottomToTop,
                                    child: cart(1)
                                )
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                  ),

                ),
              ),


            ],
          ),
        ),

      ),
    );
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height / 2.5,
          decoration: new BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0)),
              color: Colors.white),
          child: new Wrap(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 5,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(17.0),
                child: Text(
                  "What is your country of resident?",
                  style: TextStyle(fontFamily: "asdd",fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              new ListTile(
                leading: new Image.asset(
                  "assets/800px-Flag_of_Nigeria.svg/800px-Flag_of_Nigeria.svg@2x.png",
                  height: 30,
                  width: 30,
                ),
                title: new Text('Nigeria',style: TextStyle(                                  color: Color.fromRGBO(72, 72, 72, 1),
                    fontFamily: "asdr",fontSize: 15),),
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => account()));
                },
              ),
              Divider(
                height: 5,
                color: Colors.grey,
                indent: 60,
              ),
              ListTile(
                leading: Image.asset(
                  "assets/Send-Money/Send-Money@2x.png",
                  height: 30,
                  width: 30,
                ),
                title: new Text('Ghana',style: TextStyle(                                  color: Color.fromRGBO(72, 72, 72, 1),
                    fontFamily: "asdr",fontSize: 15)),
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => account()));
                },
              ),
              Divider(
                height: 5,
                color: Colors.grey,
                indent: 60,
              ),
              ListTile(
                leading: Image.asset(
                  "assets/kenya (1)/kenya (1)@2x.png",
                  height: 30,
                  width: 30,
                ),
                title: new Text('Kenya',style: TextStyle(                                  color: Color.fromRGBO(72, 72, 72, 1),
                    fontFamily: "asdr",fontSize: 15)),
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => account()));
                },
              ),
            ],
          ),
        );
      });
}
