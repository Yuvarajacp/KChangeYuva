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
                          'Terms and Conditions',
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
                        Container(
                          width: getWidthByPercentage(80, context),
                          margin: EdgeInsets.only(top:13),
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            'Restrictions',
                            style: TextStyle(color: Colors.black, fontSize: 15.5),
                          ),
                        ),
                        Container(
                          width: getWidthByPercentage(80, context),
                          margin: EdgeInsets.only(top:3),
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            'You are specifically restricted from all of the following:',
                            style: TextStyle(color: Colors.black54, fontSize: 15.5),
                          ),
                        ),
                        Container(
                          width: getWidthByPercentage(80, context),
                          margin: EdgeInsets.only(top:13),
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            'publishing any website material in any other media;',
                            style: TextStyle(color: Colors.black54, fontSize: 15.5),
                          ),
                        ),
                        Container(
                          width: getWidthByPercentage(80, context),
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            'selling, sublicensing and/or otherwise commercializing any Website material;publicly performing and/or this showing any Website material; using this Website contrary to applicable laws and regulations, or in any way may cause harm to the Website, or to any person or business entity; engaging in any data mining, data harvesting, data extracting or any other similar activity in relation to this Website;',
                            style: TextStyle(color: Colors.black54, fontSize: 15.5),
                          ),
                        ),
                        Container(
                          width: getWidthByPercentage(80, context),

                          alignment: AlignmentDirectional.center,
                          child: Text(
                            'using this WEbsite to engage in any advertising or marketing. Certain areas of this Website are restricted from being accesse by you and Company Name may further restrict access by you to any time, in absolute discretion. Any user ID and password you may have for this Website are confidential and you must maintain confidentiality as well.',
                            style: TextStyle(color: Colors.black54, fontSize: 15.5),
                          ),
                        ),
                        Container(
                          width: getWidthByPercentage(80, context),
                          margin: EdgeInsets.only(top:13),
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            'Entire Agreement',
                            style: TextStyle(color: Colors.black, fontSize: 15.5),
                          ),
                        ),
                        Container(
                          width: getWidthByPercentage(80, context),
                          margin: EdgeInsets.only(top:3),
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            'These Terms constitude the entire agreement between Company Name and you in relation to your use of this Website, and supersede all prior agreements and understandings.',
                            style: TextStyle(color: Colors.black54, fontSize: 15.5),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: getWidthByPercentage(80, context),
                            margin: EdgeInsets.only(top:19, bottom: 43),
                            height: 45,
                            decoration: BoxDecoration(
                                color:  Colors.amber,
                                border: Border.all(color: Colors.amber, width: 1.1),
                                borderRadius: BorderRadius.all(Radius.circular(9))
                            ),
                            alignment: AlignmentDirectional.center,
                            child: Text(
                              'Accept and Continue',
                              style: TextStyle(color: Colors.black, fontSize: 16.5),
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