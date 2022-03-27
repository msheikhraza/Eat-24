import 'package:eat_twenty_four/components/const.dart';
import 'package:eat_twenty_four/components/textwidget.dart';
import 'package:eat_twenty_four/dashboard/bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Signup.dart';
import 'forgetpassword.dart';

class Signin extends StatefulWidget {


  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
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
                    "assets/signinbg.png",
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,

                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      SizedBox(height: 40,),
                      Image.asset(
                          "assets/signinlogo.png",
                        height: 67,
                        width: MediaQuery.of(context).size.width/2,

                      ),
                      SizedBox(height: 20,),
                      TextWidget(
                          "Welcome Back",
                          false,
                          FontWeight.normal,
                          2.2,
                          Constants.purplebrown,
                          TextAlign.center,
                          'pnbold'),
                      SizedBox(height: 10,),
                      TextWidget(
                          "Sign in to continue",
                          false,
                          FontWeight.normal,
                          1.250,
                          Constants.purplebrown,
                          TextAlign.center,
                          'pnregular'),
                      Container(
                        width: MediaQuery.of(context).size.width/1.2,
                        child: new TextFormField(

                          decoration: new InputDecoration(


                            labelText: "Email id",
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
                        width: MediaQuery.of(context).size.width/1.2,
                        child: new TextFormField(

                          decoration: new InputDecoration(


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
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: InkWell(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextWidget(
                                "Forgot Password?",
                                false,
                                FontWeight.normal,
                                1.1,
                                Constants.faddedred,
                                TextAlign.center,
                                'pnregular'),
                          ),
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => Forgetpass()));
                          },
                        ),
                      ),
                      SizedBox(height: 30,),
                      InkWell(
                        child: Container(
                        width: MediaQuery.of(context).size.width/1.2,
                          height: 56,
                          child: Center(
                            child:   TextWidget(
                                "SIGN IN",
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
                              builder: (BuildContext context) => bottomnav()));
                        },
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width/1.2,
                        height: 56,
                        child: Center(
                          child:   Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/fb.svg"),
                              SizedBox(width: 6,),
                              TextWidget(
                                  "SIGN IN WITH FACEBOOK",
                                  false,
                                  FontWeight.w500 ,
                                  1.2,
                                  Colors.white,
                                  TextAlign.center,
                                  'pnregular'),
                            ],
                          ),
                        ),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Constants.frenchblue,

                        ),

                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width/1.2,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                        child: Center(
                          child:   Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/gmail.svg"),
                              SizedBox(width: 6,),
                              TextWidget(
                                  "SIGN IN WITH GMAIL",
                                  false,
                                  FontWeight.w500 ,
                                  1.2,
                                  Constants.faddedred,
                                  TextAlign.center,
                                  'pnregular'),
                            ],
                          ),
                        ),



                      ),
                      SizedBox(height: 20,),
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
                              text: 'Don’t have an account?',
                              style: new TextStyle(
                                  fontSize: 15,
                                  color: Constants.purplebrown,
                                  fontFamily: 'pnregular',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.5

                          )
                          ),
                          new TextSpan(text: 'Sign up',
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
                              builder: (BuildContext context) => Signup()));
                        },
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width/1.2,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: new TextSpan(
                            // Note: Styles for TextSpans must be explicitly defined.
                            // Child text spans will inherit styles from parent
                            style: new TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,

                            ),

                            children: <TextSpan>[
                              new TextSpan(
                                  text: 'By logging in you agree to Eat24/7',
                                  style: new TextStyle(
                                      fontSize: 13,
                                      color: Constants.purplebrown,
                                      fontFamily: 'pnregular',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.5

                                  )
                              ),
                              new TextSpan(text: 'Terms and services, Privacy policy,',
                                  style: new TextStyle(
                                      fontSize: 13,
                                      color: Constants.faddedred,
                                      fontFamily: 'pnregular',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.5

                                  )
                              ),
                              new TextSpan(
                                  text: 'and Content policy',
                                  style: new TextStyle(
                                      fontSize: 13,
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
                ),
              )
              
            ],
          ),
          
          
        ),
      ),
    );
  }
}
