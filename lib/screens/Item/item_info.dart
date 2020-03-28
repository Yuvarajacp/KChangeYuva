import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kchange/util/screen_util.dart';

class ItemInfoScreen extends StatefulWidget{
  @override
  _ItemInfoScreenState createState() => _ItemInfoScreenState();
}

class _ItemInfoScreenState extends State<ItemInfoScreen>{
  bool hasPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
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
                  padding: EdgeInsets.only(top: getHeightByPercentage(0, context)),
                  child: Stack(
                    children: <Widget>[

                      Container(
                        width: getWidthByPercentage(100, context),
                        height: getHeightByPercentage(41, context),
                        alignment: AlignmentDirectional.center,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(11.0),
                          child: Image(image:AssetImage("assets/images/shoes.jpeg"), fit: BoxFit.fill),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex:1,
                            child: InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Container(
                                  height: 100,
                                  padding: EdgeInsets.only(left: 14),
                                  alignment: AlignmentDirectional.centerStart,
                                  child: Icon(Icons.arrow_back, color: Colors.black87,size: 26,)
                              ),
                            ),
                          ),
                          Expanded(
                            flex:1,
                            child: InkWell(
                              onTap: (){
                                //Navigator.pop(context);
                              },
                              child: Container(
                                  height: 100,
                                  padding: EdgeInsets.only(left: 14),
                                  margin: EdgeInsets.only(right:20),
                                  alignment: AlignmentDirectional.centerEnd,
                                  child: Text(
                                    'Edit',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(color: Colors.black, fontSize: 17.5,fontWeight: FontWeight.w400),
                                  ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: getWidthByPercentage(100, context),
                  height: getHeightByPercentage(65, context),
                  margin: EdgeInsets.only(top: getHeightByPercentage(35, context)),
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
                          margin: EdgeInsets.only(top:21, left : 20),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Table tennis bat',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black, fontSize: 21.5,fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top:21, left : 20),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Location Criteria',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black, fontSize: 13.5,fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top:7, left : 20),
                          alignment: AlignmentDirectional.topStart,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Icon(Icons.location_on, size:17, color:Colors.black54),
                              Container(
                                margin: EdgeInsets.only(left : 5),
                                child: Text(
                                  '75113, 75793, 75454, 75702',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(color: Colors.black54, fontSize: 13.5,fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top:21, left : 20),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Category',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black, fontSize: 13.5,fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top:7, left : 20),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Fashion and Accessories',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black54, fontSize: 13.5,fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top:21, left : 20),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Condition',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black, fontSize: 13.5,fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top:7, left : 20),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'New',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black54, fontSize: 13.5,fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top:21, left : 20),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Description',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black, fontSize: 13.5,fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top:7, left : 20),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            '6 months old bat, in good condition. Freklin brand Black color bat and red color bat.',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black54, fontSize: 13.5,fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top:21, left : 20),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Exchange Item details',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black, fontSize: 21.5,fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top:21, left : 20),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Item 1 Title',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black, fontSize: 13.5,fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top:7, left : 20),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Book',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black54, fontSize: 13.5,fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top:21, left : 20),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Category',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black, fontSize: 13.5,fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top:7, left : 20),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Movies, Books and Music',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black54, fontSize: 13.5,fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top:21, left : 20),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Description',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black, fontSize: 13.5,fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top:7, left : 20),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Book, Harry Potter and the Sorcerer\'s Stone, modrate condition, any edition',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black54, fontSize: 13.5,fontWeight: FontWeight.w400),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, '/Login');
                          },
                          child: Container(
                            width: getWidthByPercentage(80, context),
                            margin: EdgeInsets.only(top:39, bottom: 43),
                            height: 45,
                            decoration: BoxDecoration(
                                color:  Colors.white,
                                border: Border.all(color: Colors.red, width: 1.1),
                                borderRadius: BorderRadius.all(Radius.circular(9))
                            ),
                            alignment: AlignmentDirectional.center,
                            child: Text(
                              'Delete',
                              style: TextStyle(color: Colors.red, fontSize: 16.5),
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