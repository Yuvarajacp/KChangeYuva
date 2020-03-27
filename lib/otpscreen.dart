import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kchange/termandcondition.dart';

import 'helpers.dart';
import 'homescreen.dart';


class otpscreen extends StatefulWidget{
  @override
  otpscreenstate createState() => otpscreenstate();
}

class otpscreenstate extends State<otpscreen>{
  bool hasPasswordVisible = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Scaffold(
        appBar: null,
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  width: getWidthByPercentage(100, context),
                  color: Color(0xffe6d40e),
                  padding: EdgeInsets.only(top: getHeightByPercentage(6, context)),
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                            padding: EdgeInsets.only(left: 14),
                            alignment: AlignmentDirectional.centerStart,
                            child: Icon(Icons.arrow_back, color: Colors.black87,)
                        ),
                      ),
                      Container(
                        alignment: AlignmentDirectional.center,
                        margin: EdgeInsets.only(top:12),
                        child: Text(
                          'One Time Password',
                          style: TextStyle(color: Colors.black87, fontSize: 21,fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: getWidthByPercentage(100, context),
                  height: getHeightByPercentage(81, context),
                  margin: EdgeInsets.only(top: getHeightByPercentage(19, context)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(29.0),
                      topRight: Radius.circular(29.0),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        //First Name
                        Container(
                          width: getWidthByPercentage(80, context),
                          margin: EdgeInsets.only(top:39),
                          //padding: EdgeInsets.only(left: 15),
                          child:TextField(
                              decoration:InputDecoration(
                                border:OutlineInputBorder(),
                                focusColor: Colors.grey,
                                labelText: 'One Time Password (OTP)',
                                hintText: ' _     _     _     _',
                                hintStyle: TextStyle( fontSize: 18, color: Colors.grey[300] ),
                              )
                          ),
                        ),
                        //Last Name

                        Container(
                          width: getWidthByPercentage(80, context),
                          alignment: AlignmentDirectional.center,
                          margin: EdgeInsets.only(top:5, left: 0),
                          child:RichText(
                            text: new TextSpan(text: 'If you do not receive your ',
                                style: TextStyle(color: Colors.black54, fontSize: 13,fontWeight: FontWeight.w400),
                                children: [
                                  new TextSpan(
                                    text: 'OTP ',
                                    style: TextStyle(color: Colors.black, fontSize: 13,fontWeight: FontWeight.w500),
                                    recognizer: new TapGestureRecognizer()..onTap = () => Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => termandcondition()),
                                    ),
                                  ),
                                  new TextSpan(
                                    text: 'with in a few minutes please tap on "Resend OTP" to request for a new code',
                                    style: TextStyle(color: Colors.black54, fontSize: 13,fontWeight: FontWeight.w400),
                                  ),
                                ]),
                          ),
                        ),
                        Container(
                          width: getWidthByPercentage(80, context),
                          margin: EdgeInsets.only(top:33),
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            'Resend OTP',
                            style: TextStyle(color: Colors.black87, fontSize: 16.5),
                          ),
                        ),
                        InkWell(
                          onTap: (){

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => homescreen()),
                            );
                          },
                          child: Container(
                            width: getWidthByPercentage(80, context),
                            margin: EdgeInsets.only(top:89, bottom: 43),
                            height: 45,
                            decoration: BoxDecoration(
                                color:  Colors.black87,
                                border: Border.all(color: Colors.black, width: 1.1),
                                borderRadius: BorderRadius.all(Radius.circular(9))
                            ),
                            alignment: AlignmentDirectional.center,
                            child: Text(
                              'Verify',
                              style: TextStyle(color: Colors.white, fontSize: 16.5),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

}