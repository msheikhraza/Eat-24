import 'package:eat_twenty_four/components/const.dart';
import 'package:eat_twenty_four/components/textwidget.dart';
import 'package:eat_twenty_four/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class favourite extends StatefulWidget {

  @override
  _favouriteState createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  final List<favouritemodel> favouritlist = [
    favouritemodel("assets/fav1.png","Chicken Drumstick", "4.7","323", "Pieces 5-7", false),
    favouritemodel("assets/fav2.png","Garlic Chicken", "4.7","323", "Pieces 5-7", false),
    favouritemodel("assets/fav3.png","Hyderabadi Biryani", "4.7","323", "Half kg", false),
    favouritemodel("assets/fav4.png","Tikhe Chole", "4.7","323", "Full Plate", false),
    favouritemodel("assets/fav5.png","Chicken Drumstick", "4.7","323", "Pieces 5-7", false),
    favouritemodel("assets/fav6.png","Chicken Drumstick", "4.7","323", "Pieces 5-7", false),
    favouritemodel("assets/fodimg1.png","Chicken Drumstick", "4.7","323", "Pieces 5-7", false),
    favouritemodel("assets/fodimg1.png","Chicken Drumstick", "4.7","323", "Pieces 5-7", false),


  ];
  var check=1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: check==0?Container(
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
                        "Your Favourite",
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
                'assets/emptyfav.svg',

              ),
              SizedBox(height: 20,),
              TextWidget(
                  "Where is the Love?",
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
                    "Once you favourite a resturant, it will appear here.",
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
                        "Your Favourite",
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
              Expanded(
              //  height: MediaQuery.of(context).size.height/1.27,
                child: GridView.builder(

                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.7,
                      crossAxisCount: 2,
                    ),
                    itemCount: favouritlist.length,
                  //  itemCount: 8,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              topLeft: Radius.circular(15),
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(

                            ),


                            child: Container(

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],

                              ),
                              child: Column(

                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height * 0.25,
                                    width: MediaQuery.of(context).size.width * 0.85,
                                    child: Stack(

                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15),
                                            topLeft: Radius.circular(15),
                                          ),

                                          child: Image.asset(
                                            favouritlist[index].imgpath,
                                            height: MediaQuery.of(context).size.height * 0.22,
                                            width: MediaQuery.of(context).size.width * 0.85,
                                            fit: BoxFit.cover,


                                          ),

                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              child: Icon(Icons.favorite,
                                                color: Constants.booger,

                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                   Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: TextWidget(
                                          favouritlist[index].name,
                                          false,
                                          FontWeight.normal,
                                          1.2,
                                          Constants.purplebrown,
                                          TextAlign.left,
                                          'pnbold'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: TextWidget(
                                          favouritlist[index].pieces,
                                          false,
                                          FontWeight.normal,
                                          1.1,
                                          Constants.greyishthree,
                                          TextAlign.center,
                                          'pnregular'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5,right: 5),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Constants.booger,
                                          size: 18,
                                        ),
                                        TextWidget(
                                            favouritlist[index].rating,
                                            false,
                                            FontWeight.normal,
                                            0.8,
                                            Colors.black,
                                            TextAlign.center,
                                            'pnbold'),
                                        Spacer(),
                                        TextWidget(
                                            "\$12",
                                            false,
                                            FontWeight.normal,
                                            0.8,
                                            Constants.booger,
                                            TextAlign.center,
                                            'pnbold'),


                                      ],
                                    ),
                                  ),
                                   Spacer(),


                                ],
                              ),

                            ),
                          ),
                        ),
                      );
                    }
                ),
              )

            ],
          ),

        ),

      ),
    );
  }
}
