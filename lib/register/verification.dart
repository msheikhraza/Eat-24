import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';




class Verification extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _VerificationState();
  }

}

class _VerificationState extends State<Verification> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            child: Icon(
                              Icons.arrow_back_ios,color:Color(0xff60951d),),
                          onTap: (){
                              Navigator.of(context).pop();
                          },
                        ),
                        Text("Settings",
                          style: TextStyle(
                              color: Colors.transparent,fontSize: 22,fontWeight: FontWeight.bold),),
                        Icon(Icons.waves,color:Colors.transparent,),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Phone Verification",
                          style: TextStyle(color: Colors.black,fontSize: 36,fontFamily: 'pnbold'),),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Please enter code that",
                          style: TextStyle(color: Color(0xff818181),fontSize: 16,fontFamily: 'pnlight'),),
                        Text("we’ve sent to your mobile number",
                          style: TextStyle(color: Color(0xff818181),fontSize: 16,fontFamily: 'pnlight'),),
                      ],
                    ),
                  ),
                  SizedBox(height: 24,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/verify.svg"),

                      ],
                    ),
                  ),
                  SizedBox(height: 33,),
                  OTPTextField(
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 60,


                    style: TextStyle(
                        fontSize: 17
                    ),
                    keyboardType: TextInputType.number,
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.box,
                    outlineBorderRadius:180.0,

                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    },
                  ),
                  SizedBox(height: 64,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Didn’t you received any code?",
                          style: TextStyle(color: Color(0xff818181),fontSize: 16,fontFamily: 'pnlight'),),

                      ],
                    ),
                  ),
                  SizedBox(height: 14,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("RESEND CODE",
                          style: TextStyle(color: Color(0xff494fb6),fontSize: 15,fontWeight: FontWeight.w500,fontFamily: 'pnregular'),),

                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}