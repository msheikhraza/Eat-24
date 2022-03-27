import 'dart:ui';

import 'package:eat_twenty_four/components/const.dart';
import 'package:eat_twenty_four/dashboard/bottomnav.dart';
import 'package:eat_twenty_four/dashboard/orders.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Constant{
  Constant._();
  static const double padding =20;
  static const double avatarRadius =45;
}
class CustomDialogBox extends StatefulWidget {
final  title, descriptions, text;
   final  img;

  const CustomDialogBox({ this.title, this.descriptions, this.text, this.img});

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constant.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }
  contentBox(context){
    return Container(
      // color: Color.fromARGB(51, 51, 51,2),
      height: MediaQuery.of(context).size.height/1.5,
      width: MediaQuery.of(context).size.width/1.2,
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height/1.75,
            width: MediaQuery.of(context).size.width/1.2,

            margin: EdgeInsets.only(top: Constant.avatarRadius),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(Constant.padding),

            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SvgPicture.asset(
                  "assets/ordersuccess.svg",
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width/2,
                  allowDrawingOutsideViewBox: true,
                ),
                Container(
                  width: MediaQuery.of(context).size.width/1.5,
                  child: Text(
                    widget.title,
                    style: TextStyle(
                        fontSize: 28,

                        color: Constants.purplebrown,
                      fontFamily: 'pnbold'
                    ),textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),

                Container(
                  width: MediaQuery.of(context).size.width/1.5,
                  child: Text(widget.descriptions,
                    style: TextStyle(
                      fontSize: 16,
                      color: Constants.greyishthree,
                      fontFamily: 'pnregular'
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                InkWell(
                  child: Text(
                    widget.text,
                    style: TextStyle(
                      fontSize: 15,
                      color: Constants.frenchblue,
                    ),),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => orders(1)));
                  },
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  color: Constants.booger,
                  borderRadius: BorderRadius.circular(10),

                ),
                height: 50,
                width: MediaQuery.of(context).size.width/1.8,
                child: Center(
                  child: Text("Continue Shopping".toUpperCase() ,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white ,
                        letterSpacing: 0.18,
                        fontWeight: FontWeight.bold

                    ),
                    textAlign: TextAlign.center,


                  ),
                ),


              ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => bottomnav())
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}