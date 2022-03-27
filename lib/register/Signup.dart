import 'package:eat_twenty_four/components/const.dart';
import 'package:eat_twenty_four/components/textwidget.dart';
import 'package:eat_twenty_four/register/signin.dart';
import 'package:eat_twenty_four/register/verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Signup extends StatefulWidget {


  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var checkBoxValue=false;
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
                  fit: BoxFit.cover,

                ),
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Image.asset(
                      "assets/signupbottom.png",
                    height: 86,
                    width: 86,
                  )),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: InkWell(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child:Icon(Icons.arrow_back_ios,
                            color: Colors.white,
                            )
                          ),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextWidget(
                          "Signup",
                          false,
                          FontWeight.normal,
                          2.2,
                          Colors.white,
                          TextAlign.center,
                          'pnbold'),
                      SizedBox(height: 10,),
                      TextWidget(
                          "It’s great to see you",
                          false,
                          FontWeight.normal,
                          1.250,
                          Colors.white,
                          TextAlign.center,
                          'pnregular'),
                      SizedBox(height: 10,),
                      Container(
                        height: MediaQuery.of(context).size.height/1.5,
                        width: MediaQuery.of(context).size.width/1.2,
                        child: Stack(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height/1.6,
                              width: MediaQuery.of(context).size.width/1.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],

                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Container(
                                    width: MediaQuery.of(context).size.width/1.4,
                                    child: new TextFormField(

                                      decoration: new InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.person_outline,
                                          color: Colors.black,
                                        ),

                                        labelText: "Full Name",
                                        labelStyle: TextStyle(
                                            color: Constants.greyishthree,
                                            fontSize: 16,
                                            fontFamily: 'pnregular'
                                        ),


                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Constants.silverthree,
                                          ),
                                        ),
                                        focusedBorder:UnderlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Constants.greyishthree,
                                              width: 2.0),

                                        ),
                                        fillColor: Colors.white,


                                      ),
                                      // validator: (val) {
                                      //   if(val.length==0) {
                                      //     return "Email cannot be empty";
                                      //   }else{
                                      //     return null;
                                      //   }
                                      // },
                                      keyboardType: TextInputType.emailAddress,
                                      style: new TextStyle(
                                          color: Constants.purplebrown,
                                          fontFamily: 'pnregular',
                                          fontSize: 17
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: MediaQuery.of(context).size.width/1.4,
                                    child: new TextFormField(


                                      decoration: new InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.email_outlined,
                                          color: Colors.black,
                                        ),


                                        labelText: "Email Address",
                                        labelStyle: TextStyle(
                                            color: Constants.greyishthree,
                                            fontSize: 16,
                                            fontFamily: 'pnregular'
                                        ),


                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Constants.silverthree,
                                          ),
                                        ),
                                        focusedBorder:UnderlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Constants.greyishthree,
                                              width: 2.0),

                                        ),
                                        fillColor: Colors.white,


                                      ),
                                      // validator: (val) {
                                      //   if(val.length==0) {
                                      //     return "Email cannot be empty";
                                      //   }else{
                                      //     return null;
                                      //   }
                                      // },
                                      keyboardType: TextInputType.emailAddress,
                                      style: new TextStyle(
                                          color: Constants.purplebrown,
                                          fontFamily: 'pnregular',
                                          fontSize: 17
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: MediaQuery.of(context).size.width/1.4,
                                    child: new TextFormField(


                                      decoration: new InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.phone_android,
                                          color: Colors.black,
                                        ),


                                        labelText: "Phone Number",
                                        labelStyle: TextStyle(
                                            color: Constants.greyishthree,
                                            fontSize: 16,
                                            fontFamily: 'pnregular'
                                        ),


                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Constants.silverthree,
                                          ),
                                        ),
                                        focusedBorder:UnderlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Constants.greyishthree,
                                              width: 2.0),

                                        ),
                                        fillColor: Colors.white,


                                      ),

                                      keyboardType: TextInputType.emailAddress,
                                      style: new TextStyle(
                                          color: Constants.purplebrown,
                                          fontFamily: 'pnregular',
                                          fontSize: 17
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: MediaQuery.of(context).size.width/1.4,
                                    child: new TextFormField(


                                      decoration: new InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.lock_outline,
                                          color: Colors.black,
                                        ),


                                        labelText: "Password",
                                        labelStyle: TextStyle(
                                            color: Constants.greyishthree,
                                            fontSize: 16,
                                            fontFamily: 'pnregular'
                                        ),


                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Constants.silverthree,
                                          ),
                                        ),
                                        focusedBorder:UnderlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Constants.greyishthree,
                                              width: 2.0),

                                        ),
                                        fillColor: Colors.white,


                                      ),

                                      keyboardType: TextInputType.emailAddress,
                                      style: new TextStyle(
                                          color: Constants.purplebrown,
                                          fontFamily: 'pnregular',
                                          fontSize: 17
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: MediaQuery.of(context).size.width/1.4,
                                    child: new TextFormField(


                                      decoration: new InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.lock_outline,
                                          color: Colors.black,
                                        ),


                                        labelText: "Retype Password",
                                        labelStyle: TextStyle(
                                            color: Constants.greyishthree,
                                            fontSize: 16,
                                            fontFamily: 'pnregular'
                                        ),


                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Constants.silverthree,
                                          ),
                                        ),
                                        focusedBorder:UnderlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Constants.greyishthree,
                                              width: 2.0),

                                        ),
                                        fillColor: Colors.white,


                                      ),

                                      keyboardType: TextInputType.emailAddress,
                                      style: new TextStyle(
                                          color: Constants.purplebrown,
                                          fontFamily: 'pnregular',
                                          fontSize: 17
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Transform.scale(
                                        scale: 1.2,
                                        child: Checkbox(


                                          value: checkBoxValue,

                                          activeColor:    Constants.booger,


                                          // border: BorderSide(color: Colors.white),
                                          focusColor: Colors.pink,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              checkBoxValue = value!;
                                            });
                                          },


                                          // onChanged:(bool newValue){
                                          //   setState(() {
                                          //     checkBoxValue = newValue;
                                          //   });
                                          //
                                          // }
                                        ),
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width/1.65,
                                        child: RichText(
                                          textAlign: TextAlign.left,
                                          text: new TextSpan(
                                            // Note: Styles for TextSpans must be explicitly defined.
                                            // Child text spans will inherit styles from parent
                                            style: new TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.black,

                                            ),

                                            children: <TextSpan>[
                                              new TextSpan(
                                                  text: 'I agree to Eat24/7',
                                                  style: new TextStyle(
                                                      fontSize: 12,
                                                      color: Constants.purplebrown,
                                                      fontFamily: 'pnregular',
                                                      fontWeight: FontWeight.w500,
                                                      letterSpacing: 0.5

                                                  )
                                              ),
                                              new TextSpan(text: 'Terms and services, Privacy policy,',
                                                  style: new TextStyle(
                                                      fontSize: 12,
                                                      color: Constants.faddedred,
                                                      fontFamily: 'pnregular',
                                                      fontWeight: FontWeight.w500,
                                                      letterSpacing: 0.5

                                                  )
                                              ),
                                              new TextSpan(
                                                  text: 'and Content policy',
                                                  style: new TextStyle(
                                                      fontSize: 12,
                                                      color: Constants.purplebrown,
                                                      fontFamily: 'pnregular',
                                                      fontWeight: FontWeight.w500,
                                                      letterSpacing: 0.5

                                                  )
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),


                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: InkWell(
                                child: Container(
                                  width: MediaQuery.of(context).size.width/1.8,
                                  height: 56,
                                  child: Center(
                                    child:   TextWidget(
                                        "SIGN UP",
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

                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) => Verification()));
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      InkWell(
                        child: RichText(
                          text: new TextSpan(
                            // Note: Styles for TextSpans must be explicitly defined.
                            // Child text spans will inherit styles from parent
                            style: new TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              new TextSpan(
                                  text: 'Already have an account?',
                                  style: new TextStyle(
                                      fontSize: 15,
                                      color: Constants.purplebrown,
                                      fontFamily: 'pnregular',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.5

                                  )
                              ),
                              new TextSpan(text: 'Sign in',
                                  style: new TextStyle(
                                      fontSize: 15,
                                      color: Constants.faddedred,
                                      fontFamily: 'pnregular',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.5

                                  )
                              ),
                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => Signin()));
                        },
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
