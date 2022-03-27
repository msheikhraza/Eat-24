import 'package:eat_twenty_four/components/const.dart';
import 'package:eat_twenty_four/components/textwidget.dart';
import 'package:eat_twenty_four/dashboard/productdetails.dart';
import 'package:eat_twenty_four/dialogbox/dialogbox.dart';
import 'package:eat_twenty_four/dialogbox/enablelocation.dart';
import 'package:eat_twenty_four/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

import 'package:page_transition/page_transition.dart';

import 'orders.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final List<favouritemodel> favouritlist = [
    favouritemodel("assets/fodimg1.png", "Chicken Drumstick", "4.7", "323",
        "Pieces 5-7", false),
    favouritemodel("assets/fodimg1.png", "Chicken Drumstick", "4.7", "323",
        "Pieces 5-7", false),
    favouritemodel("assets/fodimg1.png", "Chicken Drumstick", "4.7", "323",
        "Pieces 5-7", false),
    favouritemodel("assets/fodimg1.png", "Chicken Drumstick", "4.7", "323",
        "Pieces 5-7", false),
  ];

  final List<categorymodel> categorylist = [
    categorymodel(categoryname: "Burger", categoryimage: "assets/burger.svg"),
    categorymodel(categoryname: "Pizza", categoryimage: "assets/pizza.svg"),
    categorymodel(categoryname: "Chicken", categoryimage: "assets/chicken.svg"),
    categorymodel(categoryname: "Drink", categoryimage: "assets/drink.svg"),
    categorymodel(categoryname: "Donuts", categoryimage: "assets/donuts.svg")
  ];

  List<String> cusines=["Chinesse","American","South Indian","Burger","Pizza","Desserts","Sushi"];
  List<bool> cusinestap=[false,false,false,false,false,false,false,];
//  PersistentBottomSheetController _controller=; // <------ Instance variable
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    new Future.delayed(Duration(milliseconds: 1000), () {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return CustomDialogBoxlocation(
              title: "Enable Your Location",
              descriptions:
                  "Please allow to use your location to show nearby restaurant on the map.",
              text: "Go to Orders".toUpperCase(),
            );
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width,
                color: Constants.booger,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                            TextWidget("Place:", false, FontWeight.normal, 1.1,
                                Colors.white, TextAlign.center, 'pnregular'),
                            TextWidget("Gaur City", false, FontWeight.normal,
                                1.1, Colors.white, TextAlign.center, 'pnbold'),
                            Spacer(),
                            InkWell(
                              child: Icon(
                                Icons.notifications_none,
                                color: Colors.white,
                              ),
                              onTap: (){

                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TextWidget(
                              "Discover New Places",
                              false,
                              FontWeight.w600,
                              2.0,
                              Colors.white,
                              TextAlign.center,
                              'pnregular'),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        width: MediaQuery.of(context).size.width / 1.1,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1.4,
                              height: 50,
                              child: TextField(
                                style: TextStyle(color: Constants.greyishthree),
                                decoration: InputDecoration(
                                  icon: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: new Icon(Icons.search,
                                        color: Constants.greyishthree),
                                  ),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(right: 10),
                                  hintText: 'Find a food or Restuarant',
                                  hintStyle: TextStyle(
                                      color: Constants.greyishthree,
                                      fontSize: 17),
                                ),
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              child: SvgPicture.asset(
                                'assets/searchfilter.svg',
                              ),
                              onTap: () {
                                RangeValues _currentRangeValues = const RangeValues(1, 100);
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
                                                  Padding(
                                                    padding: const EdgeInsets.all(15),
                                                    child: Row(
                                                      children: [
                                                        TextWidget("Reset", false, FontWeight.w500, 1.1,
                                                            Constants.greyishthree, TextAlign.center, 'pnregular'),
                                                        Spacer(),
                                                        TextWidget("Filters", false, FontWeight.w500, 1.1,
                                                            Constants.purplebrown, TextAlign.center, 'pnbold'),
                                                        Spacer(),
                                                        TextWidget("Done", false, FontWeight.w500, 1.1,
                                                            Constants.booger, TextAlign.center, 'pnregular'),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 15),
                                                    child: TextWidget("Cuisines", false, FontWeight.w500, 1.1,
                                                        Constants.purplebrown, TextAlign.center, 'pnbold'),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 15, right: 15),
                                                    child: Divider(),
                                                  ),
                                                  Container(
                                                    height: MediaQuery.of(context).size.height/5,
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(left: 15,right: 15),
                                                      child: GridView.count(
                                                        // Create a grid with 2 columns. If you change the scrollDirection to
                                                        // horizontal, this produces 2 rows.
                                                        crossAxisCount: 3,
                                                        childAspectRatio: 3.0,
                                                        mainAxisSpacing: 5.0,
                                                        crossAxisSpacing: 10.0,
                                                        // Generate 100 widgets that display their index in the List.
                                                        children: List.generate(cusines.length, (index) {
                                                          return InkWell(
                                                            child: Container(
                                                              height: 40,
                                                              decoration: BoxDecoration(
                                                                color: cusinestap[index]?Constants.booger:Colors.white,

                                                                  borderRadius: BorderRadius.circular(20.0),
                                                                  border: cusinestap[index]?Border.all(
                                                                    color: Colors.transparent

                                                                  ):Border.all(
                                                                      color: Colors.grey.withOpacity(0.5)
                                                                  )
                                                              ),
                                                              child: Center(
                                                                child: TextWidget(
                                                                    cusines[index],
                                                                    false, FontWeight.w500,
                                                                    0.9,
                                                                    cusinestap[index]?Colors.white:Constants.greyishthree,
                                                                    TextAlign.center, 'pnregular'),
                                                              ),
                                                            ),
                                                            onTap: (){
                                                              setState(() {
                                                                if(!cusinestap[index])
                                                                {
                                                                  cusinestap[index]=true;
                                                                }
                                                                else{
                                                                  cusinestap[index]=false;
                                                                }
                                                              });

                                                            },

                                                          );
                                                        }),
                                                      ),
                                                    ),
                                                  ),

                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 15),
                                                    child: TextWidget("Sort By", false, FontWeight.w500, 1.2,
                                                        Constants.purplebrown, TextAlign.center, 'pnbold'),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8),
                                                    child: Row(
                                                      children: [
                                                        TextWidget("Top Rated",
                                                            false,
                                                            FontWeight.w500,
                                                            1.1,
                                                            Constants.faddedred,
                                                            TextAlign.center,
                                                            'pnbold'),
                                                        Spacer(),
                                                        Icon(Icons.check,
                                                          color: Constants.booger,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 15,right: 15),
                                                    child: Divider(
                                                      color: Constants.greyishthree.withOpacity(0.5),

                                                    ),
                                                  ),


                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 15,top: 8),
                                                    child: TextWidget(
                                                        "Nearest Me",
                                                        false, FontWeight.w500,
                                                        0.9,
                                                        Constants.greyishthree,
                                                        TextAlign.center, 'pnregular'),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8),
                                                    child: Divider(
                                                      color: Constants.greyishthree.withOpacity(0.5),

                                                    ),
                                                  ),

                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 15,top: 8),
                                                    child: TextWidget(
                                                        "Cost High to low",
                                                        false, FontWeight.w500,
                                                        0.9,
                                                        Constants.greyishthree,
                                                        TextAlign.center, 'pnregular'),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8),
                                                    child: Divider(
                                                      color: Constants.greyishthree.withOpacity(0.5),

                                                    ),
                                                  ),


                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 15,top: 8),
                                                    child: TextWidget(
                                                        "Cost low to high",
                                                        false, FontWeight.w500,
                                                        0.9,
                                                        Constants.greyishthree,
                                                        TextAlign.center, 'pnregular'),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8),
                                                    child: Divider(
                                                      color: Constants.greyishthree.withOpacity(0.5),

                                                    ),
                                                  ),


                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 15,top: 8),
                                                    child: TextWidget(
                                                        "Most Popular",
                                                        false, FontWeight.w500,
                                                        0.9,
                                                        Constants.greyishthree,
                                                        TextAlign.center, 'pnregular'),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8),
                                                    child: Divider(
                                                      color: Constants.greyishthree.withOpacity(0.5),

                                                    ),
                                                  ),

                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 15,top: 8),
                                                    child: TextWidget("Price",
                                                        false,
                                                        FontWeight.normal,
                                                        1.2,
                                                        Constants.purplebrown,
                                                        TextAlign.center,
                                                        'pnregular'),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8),
                                                    child: Row(
                                                      children: [
                                                        TextWidget("\$ 1.00",
                                                            false,
                                                            FontWeight.w500,
                                                            1.1,
                                                            Constants.booger,
                                                            TextAlign.center,
                                                            'pnbold'),
                                                        Spacer(),
                                                        TextWidget("\$ 200.00",
                                                            false,
                                                            FontWeight.w500,
                                                            1.1,
                                                            Constants.booger,
                                                            TextAlign.center,
                                                            'pnbold'),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                      width: MediaQuery.of(context).size.width,
                                                      child: RangeSlider(
                                                        values: _currentRangeValues,
                                                        min: 0,
                                                        max: 200,
                                                        divisions: 4,
                                                        inactiveColor: Constants.booger,
                                                        activeColor: Constants.booger,
                                                        labels: RangeLabels(
                                                          _currentRangeValues.start.round().toString(),
                                                          _currentRangeValues.end.round().toString(),

                                                        ),
                                                        onChanged: (RangeValues values) {
                                                          setState(() {
                                                            _currentRangeValues = values;
                                                          });


                                                        },
                                                      )

                                                  ),
                                                  SizedBox(height: 20,),


                                                ],
                                              ),
                                            );
                                          });
                                    });


                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.39,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: favouritlist.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 10.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.55,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          //    color: Color.fromRGBO(64 ,64 ,64,1),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.3,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.55,
                                              child: Stack(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    child: Image.asset(
                                                      favouritlist[index]
                                                          .imgpath,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.3,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.55,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: CircleAvatar(
                                                        backgroundColor:
                                                            Colors.white,
                                                        child: Icon(
                                                          Icons.favorite,
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            Align(
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
                                            Align(
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
                                            Row(
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
                                                TextWidget(
                                                    " (" +
                                                        favouritlist[index]
                                                            .totalratings +
                                                        " ratings)",
                                                    false,
                                                    FontWeight.normal,
                                                    0.7,
                                                    Constants.greyishthree,
                                                    TextAlign.center,
                                                    'pnregular'),
                                                Spacer(),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      4,
                                                  height: 15,
                                                  child: Center(
                                                    child: TextWidget(
                                                        "Free Delievery",
                                                        false,
                                                        FontWeight.w500,
                                                        0.5,
                                                        Colors.white,
                                                        TextAlign.center,
                                                        'pnregular'),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Constants.booger,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            type:
                                                PageTransitionType.bottomToTop,
                                            child: productdetails()));
                                  },
                                );
                              }),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: categorylist.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 20),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 54,
                                        width: 54,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.2),
                                              spreadRadius: 5,
                                              blurRadius: 7,
                                              offset: Offset(0,
                                                  3), // changes position of shadow
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SvgPicture.asset(
                                              categorylist[index].categoryimage,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TextWidget(
                                          categorylist[index].categoryname,
                                          false,
                                          FontWeight.normal,
                                          0.8,
                                          Colors.black,
                                          TextAlign.center,
                                          'pnregular'),
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TextWidget(
                              "Popular Food",
                              false,
                              FontWeight.w500,
                              1.4,
                              Colors.black,
                              TextAlign.left,
                              'pnregular'),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.39,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: favouritlist.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(right: 10.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.55,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        //    color: Color.fromRGBO(64 ,64 ,64,1),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.3,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.55,
                                            child: Stack(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  child: Image.asset(
                                                    favouritlist[index].imgpath,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.3,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.55,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: InkWell(
                                                    child: Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: CircleAvatar(
                                                          backgroundColor:
                                                              Colors.white,
                                                          child: favouritlist[
                                                                          index]
                                                                      .isselected ==
                                                                  false
                                                              ? Icon(
                                                                  Icons
                                                                      .favorite_outline_sharp,
                                                                  color: Colors
                                                                      .red,
                                                                )
                                                              : Icon(
                                                                  Icons
                                                                      .favorite,
                                                                  color: Constants
                                                                      .booger,
                                                                )),
                                                    ),
                                                    onTap: () {
                                                      if (favouritlist[index]
                                                              .isselected ==
                                                          false) {
                                                        setState(() {
                                                          favouritlist[index]
                                                                  .isselected =
                                                              true;
                                                        });
                                                      } else {
                                                        setState(() {
                                                          favouritlist[index]
                                                                  .isselected =
                                                              false;
                                                        });
                                                      }
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          Align(
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
                                          Align(
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
                                          Row(
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
                                              TextWidget(
                                                  " (" +
                                                      favouritlist[index]
                                                          .totalratings +
                                                      " ratings)",
                                                  false,
                                                  FontWeight.normal,
                                                  0.7,
                                                  Constants.greyishthree,
                                                  TextAlign.center,
                                                  'pnregular'),
                                              Spacer(),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    4,
                                                height: 15,
                                                child: Center(
                                                  child: TextWidget(
                                                      "Free Delievery",
                                                      false,
                                                      FontWeight.w500,
                                                      0.5,
                                                      Colors.white,
                                                      TextAlign.center,
                                                      'pnregular'),
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Constants.booger,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}

// void _settingModalBottomSheet(context,cusines) {
//   showModalBottomSheet(
//       backgroundColor: Colors.transparent,
//       context: context,
//       isScrollControlled: true,
//       builder: (BuildContext bc) {
//         return Container(
//           height: MediaQuery.of(context).size.height / 1.2,
//           decoration: new BoxDecoration(
//               borderRadius: BorderRadius.only(
//                   topRight: Radius.circular(20.0),
//                   topLeft: Radius.circular(20.0)),
//               color: Colors.white),
//           child: new Wrap(
//             children: <Widget>[
//               Center(
//                 child: Padding(
//                   padding: const EdgeInsets.all(15.0),
//                   child: Container(
//                     height: 5,
//                     width: 82,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Colors.grey[300],
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(15),
//                 child: Row(
//                   children: [
//                     TextWidget("Reset", false, FontWeight.w500, 1.1,
//                         Constants.greyishthree, TextAlign.center, 'pnregular'),
//                     Spacer(),
//                     TextWidget("Filters", false, FontWeight.w500, 1.1,
//                         Constants.purplebrown, TextAlign.center, 'pnbold'),
//                     Spacer(),
//                     TextWidget("Done", false, FontWeight.w500, 1.1,
//                         Constants.booger, TextAlign.center, 'pnregular'),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 15),
//                 child: TextWidget("Cuisines", false, FontWeight.w500, 1.1,
//                     Constants.purplebrown, TextAlign.center, 'pnbold'),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 15, right: 15),
//                 child: Divider(),
//               ),
//               Container(
//                 height: MediaQuery.of(context).size.height/5,
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 15,right: 15),
//                   child: GridView.count(
//                     // Create a grid with 2 columns. If you change the scrollDirection to
//                     // horizontal, this produces 2 rows.
//                     crossAxisCount: 3,
//                     childAspectRatio: 3.0,
//                     mainAxisSpacing: 5.0,
//                     crossAxisSpacing: 10.0,
//                     // Generate 100 widgets that display their index in the List.
//                     children: List.generate(cusines.length, (index) {
//                       return Container(
//                         height: 40,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20.0),
//                           border: Border.all(
//                             color: Colors.grey.withOpacity(0.5)
//                           )
//                         ),
//                         child: Center(
//                           child: TextWidget(
//                               cusines[index],
//                               false, FontWeight.w500,
//                               0.9,
//                               Constants.greyishthree,
//                               TextAlign.center, 'pnregular'),
//                         ),
//                       );
//                     }),
//                   ),
//                 ),
//               ),
//
//               Padding(
//                 padding: const EdgeInsets.only(left: 15),
//                 child: TextWidget("Sort By", false, FontWeight.w500, 1.2,
//                     Constants.purplebrown, TextAlign.center, 'pnbold'),
//               ),
//               SizedBox(height: 10,),
//               Padding(
//                 padding: const EdgeInsets.only(left: 15,right: 15,top: 8),
//                 child: Row(
//                   children: [
//                     TextWidget("Top Rated",
//                         false,
//                         FontWeight.w500,
//                         1.1,
//                         Constants.faddedred,
//                         TextAlign.center,
//                         'pnbold'),
//                     Spacer(),
//                     Icon(Icons.check,
//                     color: Constants.booger,
//                     )
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 15,right: 15),
//                 child: Divider(
//                   color: Constants.greyishthree.withOpacity(0.5),
//
//                 ),
//               ),
//
//
//               Padding(
//                 padding: const EdgeInsets.only(left: 15,top: 8),
//                 child: TextWidget(
//                     "Nearest Me",
//                     false, FontWeight.w500,
//                     0.9,
//                     Constants.greyishthree,
//                     TextAlign.center, 'pnregular'),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 15,right: 15,top: 8),
//                 child: Divider(
//                   color: Constants.greyishthree.withOpacity(0.5),
//
//                 ),
//               ),
//
//               Padding(
//                 padding: const EdgeInsets.only(left: 15,top: 8),
//                 child: TextWidget(
//                     "Cost High to low",
//                     false, FontWeight.w500,
//                     0.9,
//                     Constants.greyishthree,
//                     TextAlign.center, 'pnregular'),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 15,right: 15,top: 8),
//                 child: Divider(
//                   color: Constants.greyishthree.withOpacity(0.5),
//
//                 ),
//               ),
//
//
//               Padding(
//                 padding: const EdgeInsets.only(left: 15,top: 8),
//                 child: TextWidget(
//                     "Cost low to high",
//                     false, FontWeight.w500,
//                     0.9,
//                     Constants.greyishthree,
//                     TextAlign.center, 'pnregular'),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 15,right: 15,top: 8),
//                 child: Divider(
//                   color: Constants.greyishthree.withOpacity(0.5),
//
//                 ),
//               ),
//
//
//               Padding(
//                 padding: const EdgeInsets.only(left: 15,top: 8),
//                 child: TextWidget(
//                     "Most Popular",
//                     false, FontWeight.w500,
//                     0.9,
//                     Constants.greyishthree,
//                     TextAlign.center, 'pnregular'),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 15,right: 15,top: 8),
//                 child: Divider(
//                   color: Constants.greyishthree.withOpacity(0.5),
//
//                 ),
//               ),
//
//               Padding(
//                 padding: const EdgeInsets.only(left: 15,top: 8),
//                 child: TextWidget("Price",
//                     false,
//                     FontWeight.normal,
//                     1.2,
//                     Constants.purplebrown,
//                     TextAlign.center,
//                     'pnregular'),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 15,right: 15,top: 8),
//                 child: Row(
//                   children: [
//                     TextWidget("\$ 1.00",
//                         false,
//                         FontWeight.w500,
//                         1.1,
//                         Constants.booger,
//                         TextAlign.center,
//                         'pnbold'),
//                     Spacer(),
//                     TextWidget("\$ 200.00",
//                         false,
//                         FontWeight.w500,
//                         1.1,
//                         Constants.booger,
//                         TextAlign.center,
//                         'pnbold'),
//                   ],
//                 ),
//               ),
//               Container(
//                   width: MediaQuery.of(context).size.width,
//                   child: RangeSlider(
//                     values: RangeValues(1, 100),
//                     min: 0,
//                     max: 200,
//                     divisions: 4,
//                     inactiveColor: Constants.booger,
//                     activeColor: Constants.booger,
//                     labels: RangeLabels(
//                       _currentRangeValues.start.round().toString(),
//                       _currentRangeValues.end.round().toString(),
//
//                     ),
//                     onChanged: (RangeValues values) {
//
//                         _currentRangeValues = values;
//
//                     },
//                   )
//
//               )
//
//
//             ],
//           ),
//         );
//       });
// }

