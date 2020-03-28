import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kchange/util/screen_util.dart';

class RegistrationScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _RegistrationScreenState();
  }

}

class _RegistrationScreenState extends State<RegistrationScreen>{
  bool hasPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
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
                          'Registration',
                          style: TextStyle(color: Colors.black87, fontSize: 29,fontWeight: FontWeight.w500),
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
                          margin: EdgeInsets.only(top:49),
                          //padding: EdgeInsets.only(left: 15),
                          child:TextField(
                              decoration:InputDecoration(
                                border:OutlineInputBorder(),
                                labelText: 'First Name',
                              )
                          ),
                        ),
                        //Last Name
                        Container(
                          width: getWidthByPercentage(80, context),
                          margin: EdgeInsets.only(top:19),
                          //padding: EdgeInsets.only(left: 15),
                          child:TextField(
                              decoration:InputDecoration(
                                border:OutlineInputBorder(),
                                labelText: 'Last Name',
                              )
                          ),
                        ),
                        //UserId
                        Container(
                          width: getWidthByPercentage(80, context),
                          margin: EdgeInsets.only(top:19),
                          //padding: EdgeInsets.only(left: 15),
                          child:TextField(
                              decoration:InputDecoration(
                                border:OutlineInputBorder(),
                                labelText: 'User Id (Password)',
                              )
                          ),
                        ),
                        //Password
                        Stack(
                          alignment: AlignmentDirectional.center,
                          children: <Widget>[
                            Container(
                              width: getWidthByPercentage(80, context),
                              margin: EdgeInsets.only(top:19),
                              //padding: EdgeInsets.only(left: 15),
                              child:TextFormField(
                                  textInputAction: TextInputAction.done,
                                  keyboardType: TextInputType.phone,
                                  inputFormatters: [
                                    WhitelistingTextInputFormatter.digitsOnly
                                  ],
                                  obscureText: !hasPasswordVisible,
                                  decoration:InputDecoration(
                                    border:OutlineInputBorder(),
                                    labelText: 'Password',
                                  )
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  if( hasPasswordVisible ){
                                    hasPasswordVisible = false;
                                  }else{
                                    hasPasswordVisible = true;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.only(right: 50,top: 15),
                                child: Align(
                                    alignment: AlignmentDirectional.bottomEnd,
                                    child: Icon( hasPasswordVisible ? Icons.visibility: Icons.visibility_off)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 19,
                              height: 19,
                              margin: EdgeInsets.only(top:12, left: 40),
                              decoration: BoxDecoration(
                                  color:  Colors.white,
                                  border: Border.all(color: Colors.grey, width: 2),
                                  borderRadius: BorderRadius.all(Radius.circular(3))
                              ),
                            ),
                            Container(
                              width: getWidthByPercentage(75, context),
                              alignment: AlignmentDirectional.center,
                              margin: EdgeInsets.only(top:12, left: 11),
                              child:RichText(
                                text: new TextSpan(text: 'By creating an account, I agree to the',
                                    style: TextStyle(color: Colors.black54, fontSize: 13,fontWeight: FontWeight.w400),
                                    children: [
                                      new TextSpan(
                                        text: ' Terms & Conditions',
                                        style: TextStyle(color: Colors.black, fontSize: 13,fontWeight: FontWeight.w500),
                                        recognizer: new TapGestureRecognizer()..onTap = () {
                                          Navigator.pushNamed(context, '/TermsAndConditions');
                                        },
                                      ),
                                      new TextSpan(
                                        text: ' and our default Notification Settings.',
                                        style: TextStyle(color: Colors.black54, fontSize: 13,fontWeight: FontWeight.w400),
                                      ),
                                    ]),
                              ),
                            ),
                          ],
                        ),

                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, '/OtpValidation');
                          },
                          child: Container(
                            width: getWidthByPercentage(80, context),
                            margin: EdgeInsets.only(top:19, bottom: 43),
                            height: 45,
                            decoration: BoxDecoration(
                                color:  Colors.black87,
                                border: Border.all(color: Colors.black, width: 1.1),
                                borderRadius: BorderRadius.all(Radius.circular(9))
                            ),
                            alignment: AlignmentDirectional.center,
                            child: Text(
                              'Register',
                              style: TextStyle(color: Colors.white, fontSize: 16.5),
                            ),
                          ),
                        ),

                        Container(
                          width: getWidthByPercentage(80, context),
                          margin: EdgeInsets.only(top:14),
                          height: 49,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black87, width: 1.5),
                              borderRadius: BorderRadius.all(Radius.circular(9))
                          ),
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            'Already have an account',
                            style: TextStyle(color: Colors.black87, fontSize: 16.5),
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