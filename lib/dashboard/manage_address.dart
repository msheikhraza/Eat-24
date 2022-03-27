import 'package:eat_twenty_four/components/const.dart';
import 'package:eat_twenty_four/components/textwidget.dart';
import 'package:eat_twenty_four/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class MAnage_address extends StatefulWidget {

  @override
  _MAnage_addressState createState() => _MAnage_addressState();
}

class _MAnage_addressState extends State<MAnage_address> {

  final List<savedlocation> savedlocationlist =[
    savedlocation(savedlocationicon:"assets/savedloc.svg",savedlocationtitle: "Home",savedlocationaddress: "E Block West Gaur City 1, Noida Extension, Noida, Phase-2, Greater Noida, Uttar Pradesh 201012"),
    savedlocation(savedlocationicon:"assets/savedloc2.svg",savedlocationtitle: "Office",savedlocationaddress: "E Block West Gaur City 1, Noida Extension, Noida, Phase-2, Greater Noida, Uttar Pradesh 201012"),

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Container(
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
                        "Manage Address",
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
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: TextWidget(
                      "Saved Location",
                      false,
                      FontWeight.normal,
                      1.5,
                      Constants.purplebrown,
                      TextAlign.center,
                      'pnbold'),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                  height: MediaQuery.of(context).size.height/2.6,
                  child: new ListView.builder
                    (
                      itemCount: savedlocationlist.length,
                      itemBuilder: (BuildContext ctxt, int Index) {
                        return new Container(
                          height: MediaQuery.of(context).size.height/5.8,
                          width: MediaQuery.of(context).size.width/1.2,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: SvgPicture.asset(savedlocationlist[Index].savedlocationicon),
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TextWidget(
                                        savedlocationlist[Index].savedlocationtitle,
                                        false,
                                        FontWeight.normal,
                                        1.2,
                                        Constants.purplebrown,
                                        TextAlign.center,
                                        'pnbold'),
                                    Container(
                                      width: MediaQuery.of(context).size.width/1.25,
                                      child: TextWidget(
                                          savedlocationlist[Index].savedlocationaddress,
                                          false,
                                          FontWeight.normal,
                                          1.0,
                                          Constants.warmgrey,
                                          TextAlign.left,
                                          'pnlight'),
                                    ),
                                    Row(
                                      children: [
                                        TextWidget(
                                            "Edit".toUpperCase(),
                                            false,
                                            FontWeight.w600,
                                            1.0,
                                            Constants.sapgreen,
                                            TextAlign.left,
                                            'pnlight'),
                                        SizedBox(width: 20,),
                                        TextWidget(
                                            "Delete".toUpperCase(),
                                            false,
                                            FontWeight.w600,
                                            1.0,
                                            Constants.sapgreen,
                                            TextAlign.left,
                                            'pnlight'),

                                      ],
                                    )
                                  ],
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                        );
                      }
                  )
              ),
              InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width/1.2,
                  height: 56,
                  child: Center(
                    child:   TextWidget(
                        "Add New Address",
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
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (BuildContext context) => bottomnav()));
                },
              ),

            ],
          ),

        ),

      ),
    );
  }
}
