import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kchange/termandcondition.dart';

import 'helpers.dart';


class homescreen extends StatefulWidget{
  @override
  homescreenstate createState() => homescreenstate();
}

class homescreenstate extends State<homescreen>{
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
                          'Home Page',
                          style: TextStyle(color: Colors.black87, fontSize: 21,fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: getWidthByPercentage(100, context),
                  height: getHeightByPercentage(71, context),
                  margin: EdgeInsets.only(top: getHeightByPercentage(29, context)),
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
                          margin: EdgeInsets.only(top:33),
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            'Main Screen',
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