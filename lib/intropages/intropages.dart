
import 'package:eat_twenty_four/register/signin.dart';
import 'package:flutter/material.dart';
import 'package:eat_twenty_four/components/const.dart';
import 'package:flutter_svg/flutter_svg.dart';


class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  PageController controller = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          PageView(
            onPageChanged: (value) {
              setState(() {
                pageIndex = value;
              });
            },
            controller: controller,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
//                decoration: BoxDecoration(
//                    image: DecorationImage(image: AssetImage('assets/logo.png'))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 2.8,
                      child:  SvgPicture.asset(
                        'assets/introimg1.svg',

                      ),
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.15,
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Discover place near you".toUpperCase(),
                              textAlign: TextAlign.center,
                              style: Constants.introheading
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 16.0),
                              child: Text(
                                "We make it simple to find the food you crave. Enter your address and let us do rest.",
                                textAlign: TextAlign.center,
                                style: Constants.introsubheading,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 35.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    child: Text(
                                      "Skip",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'pnregular',
                                        color: Constants.pinkishgreay
                                      ),
                                    ),
                                    onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (BuildContext context) => Signin()));
                                    },
                                  ),
                                  Icon(Icons.double_arrow_sharp,
                                      size: 15,
                                      color: Constants.pinkishgreay
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
//                decoration: BoxDecoration(
//                    image: DecorationImage(image: AssetImage('assets/logo.png'))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 2.8,
                      padding: EdgeInsets.only(left: 30),
                      child:  Image.asset(
                        'assets/introimg2.png',

                      ),
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.0,
                        child: Column(
                          children: <Widget>[
                            Text(
                                "Choose A Tasty Dish".toUpperCase(),
                                textAlign: TextAlign.center,
                                style: Constants.introheading
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 16.0),
                              child: Text(
                                "When you order eat street we’ll hook you up with exclusive coupons, special discount and rewards.",
                                textAlign: TextAlign.center,
                                style: Constants.introsubheading,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 35.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    child: Text(
                                      "Skip",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'pnregular',
                                          color: Constants.pinkishgreay
                                      ),
                                    ),
                                    onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (BuildContext context) => Signin()));
                                    },
                                  ),
                                  Icon(Icons.double_arrow_sharp,
                                      size: 15,
                                      color: Constants.pinkishgreay
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
//                decoration: BoxDecoration(
//                    image: DecorationImage(image: AssetImage('assets/logo.png'))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 2.8,
                      child:  Image.asset(
                        'assets/introimg3.png',

                      ),
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.0,
                        child: Column(
                          children: <Widget>[
                            Text(
                                "Pick Up or Delivery".toUpperCase(),
                                textAlign: TextAlign.center,
                                style: Constants.introheading
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 16.0),
                              child: Text(
                                "We make food ordering fast, simple and free- no matter if you order online or cash.",
                                textAlign: TextAlign.center,
                                style: Constants.introsubheading,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 35.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    child: Text(
                                      "Skip",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'pnregular',
                                          color: Constants.pinkishgreay
                                      ),
                                    ),
                                    onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (BuildContext context) => Signin()));
                                    },
                                  ),
                                  Icon(Icons.double_arrow_sharp,
                                      size: 15,
                                      color: Constants.pinkishgreay
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
          Positioned(
            bottom: 20.0,
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
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
                            height: 8,
                            width:pageIndex == 0? 39:16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                shape:pageIndex == 0?BoxShape.rectangle:BoxShape.rectangle,
                                color: pageIndex == 0
                                    ? Constants.faddedred
                                    : Constants.silverthree
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(2.0),
                            height: 8,
                            width: pageIndex == 1? 39:16,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                shape: pageIndex == 1?BoxShape.rectangle:BoxShape.rectangle,
                                color: pageIndex == 1
                                    ? Constants.faddedred
                                    : Constants.silverthree
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(2),
                            height: 8,
                            width:pageIndex == 2? 39:16,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                shape:pageIndex == 2?BoxShape.rectangle:BoxShape.rectangle,
                                color: pageIndex == 2
                                    ? Constants.faddedred
                                    : Constants.silverthree
                            ),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          )
        ],
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
