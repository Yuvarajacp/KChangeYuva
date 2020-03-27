import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'helpers.dart';


class termandcondition extends StatefulWidget{
  @override
  termandconditionstate createState() => termandconditionstate();
}

class termandconditionstate extends State<termandcondition>{
  bool hasPasswordVisible = true;



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
                          'Notification',
                          style: TextStyle(color: Colors.black87, fontSize: 23,fontWeight: FontWeight.w500),
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

                        Container(
                          width: getWidthByPercentage(80, context),
                          margin: EdgeInsets.only(top:23),
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            'KChange Terms & Conditions',
                            style: TextStyle(color: Colors.black87, fontSize: 16.5),
                          ),
                        ),

                        Container(
                          width: getWidthByPercentage(80, context),
                          margin: EdgeInsets.only(top:19),
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            'These Website Standard Terms and Conditions written on this webpage shall manage your use of our website,Website Name accessible at Website.com',
                            style: TextStyle(color: Colors.black54, fontSize: 15.5),
                          ),
                        ),
                        Container(
                          width: getWidthByPercentage(80, context),
                          margin: EdgeInsets.only(top:13),
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            'These Terms will be applied fully and affect to your use of this Website. By using this Website, you agreed to accept all terms and conditions written in here. You must not use this Website if you disagree with any of these Website Standard Terms and Conditions.',
                            style: TextStyle(color: Colors.black54, fontSize: 15.5),
                          ),
                        ),
                        Container(
                          width: getWidthByPercentage(80, context),
                          margin: EdgeInsets.only(top:13),
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            'Minors or people below 18 years old are not allowed to use this Website.',
                            style: TextStyle(color: Colors.black54, fontSize: 15.5),
                          ),
                        ),
                        Container(
                          width: getWidthByPercentage(80, context),
                          margin: EdgeInsets.only(top:13),
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            'Intellectual Property Rights Other than the content you own, under these Terms, Company Name ans/or  its licensors own all the intellectual property rights and materials contained in this Website.',
                            style: TextStyle(color: Colors.black54, fontSize: 15.5),
                          ),
                        ),
                        Container(
                          width: getWidthByPercentage(80, context),
                          margin: EdgeInsets.only(top:13),
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            'You are granted limited licensse only for purposes of viewing the material contained on this Website.',
                            style: TextStyle(color: Colors.black54, fontSize: 15.5),
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