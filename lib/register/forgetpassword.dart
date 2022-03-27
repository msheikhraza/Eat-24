import 'package:eat_twenty_four/components/const.dart';
import 'package:eat_twenty_four/components/textwidget.dart';
import 'package:eat_twenty_four/dialogbox/forgetpassdialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Forgetpass extends StatefulWidget {


  @override
  _ForgetpassState createState() => _ForgetpassState();
}

class _ForgetpassState extends State<Forgetpass> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,

        body: SingleChildScrollView(
          child: Container(
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
                          "Forgot Passwrod",
                          false,
                          FontWeight.normal,
                          1.4,
                          Constants.purplebrown,
                          TextAlign.center,
                          'pnbold'),
                      Spacer(),

                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Image.asset(
                  'assets/forgetpass.png',
                  height: MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width/1.5,

                ),
                SizedBox(height: 20,),
                TextWidget(
                    "Forgot Password",
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
                      "Please enter your email address. You will recive a link to create a new password via email.",
                      false,
                      FontWeight.normal,
                      1.2,
                      Constants.warmgrey,
                      TextAlign.center,
                      'pnlight'),
                ),
                SizedBox(height: 20,),
                Container(
                  width: MediaQuery.of(context).size.width/1.2,
                  child: new TextFormField(

                    decoration: new InputDecoration(
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Constants.purplebrown,
                      ),

                      labelText: "Enter your email address",
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
                Spacer(),
                InkWell(
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 56,
                    child: Center(
                      child:   TextWidget(
                          "Send",
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
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return CustomDialogBoxforgetpass(
                            title: "Your password has been reset",
                            descriptions:
                            "You’ll shortly receive an email with a code to setup a new password.",
                            text: "Go to Orders".toUpperCase(),
                          );
                        });

                  },

                ),
                SizedBox(height: 20,),
              ],
            ),

          ),
        ),

      ),
    );
  }
}
