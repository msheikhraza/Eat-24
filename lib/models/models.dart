import 'package:flutter/cupertino.dart';

class favouritemodel{
  String imgpath;
  String name;

  String rating;
  String pieces;
  String totalratings;
  var isselected;

  favouritemodel(this.imgpath,this.name,this.rating,this.totalratings,this.pieces,this.isselected);

}

class categorymodel{
  var categoryname;
  var categoryimage;

  categorymodel({this.categoryname,this.categoryimage});

}

class savedlocation{
  var savedlocationicon;
  var savedlocationtitle;
  var savedlocationaddress;


  savedlocation({this.savedlocationicon,this.savedlocationtitle,this.savedlocationaddress});

}

class cartitems{
  var cartitemsimg;
  var cartitemsname;
  var cartitemsquantity;
  var cartitemsprice;



  cartitems({this.cartitemsimg,this.cartitemsname,this.cartitemsquantity,this.cartitemsprice});

}


class chooseaddress{

  final IconData icon;
  var title;
  var isselected;
  chooseaddress(this.icon,this.title,this.isselected);
}