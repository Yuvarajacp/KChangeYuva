import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kchange/util/screen_util.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  bool hasPasswordVisible = true;
  bool hasFirstPermissionCheck = false, hasSecondPermissionCheck = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: null,
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child:SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: getWidthByPercentage(100, context),
                    color: Colors.amber,
                    padding: EdgeInsets.only(top: getHeightByPercentage(6, context)),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.only(left: 20),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //borderRadius: BorderRadius.all(Radius.circular(30)),
                              ),
                              child:ClipRRect(
                                borderRadius: BorderRadius.circular(11.0),
                                child: Image(image:AssetImage("assets/images/profile_photo.jpg")),
                              ),

                            ),
                            Expanded(
                              flex:1,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Icon(Icons.search, size:22),
                                  Container(
                                      margin:EdgeInsets.only(left: 25),
                                      child: Icon(Icons.message, size:22)),
                                  Container(
                                      margin:EdgeInsets.only(left: 25, right:25),
                                      child: Icon(Icons.notifications, size:22),),
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: getWidthByPercentage(100, context),
                          margin: EdgeInsets.only(top:19, left:20),
                          //padding: EdgeInsets.only(left: 15),
                          child:Text(
                              'Welcome',
                              style: TextStyle(color: Colors.black, fontSize: 24,fontWeight: FontWeight.w300),
                          ),
                        ),
                        Container(
                          width: getWidthByPercentage(100, context),
                          margin: EdgeInsets.only(top:7, left:20),
                          //padding: EdgeInsets.only(left: 15),
                          child:Text(
                            'Yuvaraja CPR',
                            style: TextStyle(color: Colors.black, fontSize: 21,fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getWidthByPercentage(100, context),
                    height: getHeightByPercentage(74, context),
                    margin: EdgeInsets.only(top: getHeightByPercentage(26, context)),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(29.0),
                        topRight: Radius.circular(29.0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: getWidthByPercentage(80, context),
                          margin: EdgeInsets.only(top:19, left:20),
                          //padding: EdgeInsets.only(left: 15),
                          child:Text(
                            'Capture Your unused Items, add info and you can start exchanging',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 13.5,fontWeight: FontWeight.w300),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            //Navigator.pop(context);
                          },
                          child: Container(
                            width: getWidthByPercentage(35, context),
                            margin: EdgeInsets.only(top:19, bottom: 43),
                            height: 31,
                            decoration: BoxDecoration(
                                color:  Colors.amber,
                                border: Border.all(color: Colors.amber, width: 1.1),
                                borderRadius: BorderRadius.all(Radius.circular(9))
                            ),
                            alignment: AlignmentDirectional.center,
                            child: Text(
                              'Add New List',
                              style: TextStyle(color: Colors.black, fontSize: 14),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getWidthByPercentage(100, context),
                    height: getHeightByPercentage(57, context),
                    margin: EdgeInsets.only(top: getHeightByPercentage(43, context)),
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
                            width: getWidthByPercentage(100, context),
                            margin: EdgeInsets.only(top:25, left:20),
                            //padding: EdgeInsets.only(left: 15),
                            child:Text(
                              'My List',
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.black, fontSize: 17.5,fontWeight: FontWeight.w400),
                            ),
                          ),

                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, '/ItemInfoScreen');
                            },
                            child: Container(
                              height: 135,
                              margin: EdgeInsets.only(top:20),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Stack(
                                    alignment: AlignmentDirectional.topStart,
                                    children: <Widget>[
                                      Container(
                                        width: getWidthByPercentage(55, context),
                                        height: 135,
                                        margin: EdgeInsets.only(top:10, left: getWidthByPercentage(35, context)),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [BoxShadow(
                                            color: Colors.grey[400],
                                            blurRadius: 0.5,
                                          ),],
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                                        ),
                                        child:Column(
                                          children: <Widget>[
                                             Row(
                                               mainAxisSize: MainAxisSize.max,
                                               mainAxisAlignment: MainAxisAlignment.end,
                                               children: <Widget>[
                                                 Container(
                                                   padding: EdgeInsets.only(top:2,bottom: 2, left:10, right: 10),
                                                   decoration: BoxDecoration(
                                                     color:Colors.orange,
                                                     borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
                                                   ),
                                                   //padding: EdgeInsets.only(left: 15),
                                                   child:Text(
                                                     'Searching',
                                                     textAlign: TextAlign.start,
                                                     style: TextStyle(color: Colors.white, fontSize: 11.5,fontWeight: FontWeight.w400),
                                                   ),
                                                 ),
                                               ],
                                             ),
                                            Container(
                                              width: getWidthByPercentage(100, context),
                                              margin: EdgeInsets.only(top:5, left:30),
                                              //padding: EdgeInsets.only(left: 15),
                                              child:Text(
                                                'Table tennis bat',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(color: Colors.black, fontSize: 13.5,fontWeight: FontWeight.w500),
                                              ),
                                            ),
                                            Container(
                                              width: getWidthByPercentage(100, context),
                                              margin: EdgeInsets.only(top:5, left:30),
                                              //padding: EdgeInsets.only(left: 15),
                                              child:Text(
                                                '2 days ago',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(color: Colors.grey, fontSize: 12,fontWeight: FontWeight.w400),
                                              ),
                                            ),
                                            Container(
                                              width: getWidthByPercentage(100, context),
                                              margin: EdgeInsets.only(top:20, left:30),
                                              //padding: EdgeInsets.only(left: 15),
                                              child:Text(
                                                'CATEGORY',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(color: Colors.grey, fontSize: 9.5,fontWeight: FontWeight.w400),
                                              ),
                                            ),
                                            Container(
                                              width: getWidthByPercentage(100, context),
                                              margin: EdgeInsets.only(top:5, left:30),
                                              //padding: EdgeInsets.only(left: 15),
                                              child:Text(
                                                'Sports, Leisure and Games',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(color: Colors.black, fontSize: 11.5,fontWeight: FontWeight.w500),
                                              ),
                                            ),
                                          ],
                                        ),

                                      ),
                                      Container(
                                        width: getWidthByPercentage(35, context),
                                        height: 135,
                                        margin: EdgeInsets.only(left: 20),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 2.0,
                                          ),],
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        child:ClipRRect(
                                          borderRadius: BorderRadius.circular(11.0),
                                          child: Image(image:AssetImage("assets/images/table1.jpeg"), fit: BoxFit.fitHeight,),
                                        ),

                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 135,
                            margin: EdgeInsets.only(top:20),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Stack(
                                  alignment: AlignmentDirectional.topStart,
                                  children: <Widget>[
                                    Container(
                                      width: getWidthByPercentage(55, context),
                                      height: 135,
                                      margin: EdgeInsets.only(top:10, left: getWidthByPercentage(35, context)),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [BoxShadow(
                                          color: Colors.grey[400],
                                          blurRadius: 0.5,
                                        ),],
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                                      ),
                                      child:Column(
                                        children: <Widget>[
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: <Widget>[
                                              Container(
                                                padding: EdgeInsets.only(top:2,bottom: 2, left:10, right: 10),
                                                decoration: BoxDecoration(
                                                  color:Colors.red,
                                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
                                                ),
                                                //padding: EdgeInsets.only(left: 15),
                                                child:Text(
                                                  'Expired',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(color: Colors.white, fontSize: 11.5,fontWeight: FontWeight.w400),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            width: getWidthByPercentage(100, context),
                                            margin: EdgeInsets.only(top:5, left:30),
                                            //padding: EdgeInsets.only(left: 15),
                                            child:Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: <Widget>[
                                                Text(
                                                  'Shoes',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(color: Colors.black, fontSize: 13.5,fontWeight: FontWeight.w500),
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: <Widget>[
                                                      Container(
                                                        margin: EdgeInsets.only(right: 10),
                                                        child: Text(
                                                          'Renew',
                                                          textAlign: TextAlign.start,
                                                          style: TextStyle(color: Colors.blue, fontSize: 12.5,fontWeight: FontWeight.w400),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: getWidthByPercentage(100, context),
                                            margin: EdgeInsets.only(top:5, left:30),
                                            //padding: EdgeInsets.only(left: 15),
                                            child:Text(
                                              '25 days ago',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(color: Colors.grey, fontSize: 12,fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Container(
                                            width: getWidthByPercentage(100, context),
                                            margin: EdgeInsets.only(top:20, left:30),
                                            //padding: EdgeInsets.only(left: 15),
                                            child:Text(
                                              'CATEGORY',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(color: Colors.grey, fontSize: 9.5,fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Container(
                                            width: getWidthByPercentage(100, context),
                                            margin: EdgeInsets.only(top:5, left:30),
                                            //padding: EdgeInsets.only(left: 15),
                                            child:Text(
                                              'Fashion and Accessories',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(color: Colors.black, fontSize: 11.5,fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),

                                    ),
                                    Container(
                                      width: getWidthByPercentage(35, context),
                                      height: 135,
                                      margin: EdgeInsets.only(left: 20),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 2.0,
                                        ),],
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                      child:ClipRRect(
                                        borderRadius: BorderRadius.circular(11.0),
                                        child: Image(image:AssetImage("assets/images/shoes.jpeg"), fit: BoxFit.fitHeight,),
                                      ),

                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 135,
                            margin: EdgeInsets.only(top:20),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Stack(
                                  alignment: AlignmentDirectional.topStart,
                                  children: <Widget>[
                                    Container(
                                      width: getWidthByPercentage(55, context),
                                      height: 135,
                                      margin: EdgeInsets.only(top:10, left: getWidthByPercentage(35, context)),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [BoxShadow(
                                          color: Colors.grey[400],
                                          blurRadius: 0.5,
                                        ),],
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                                      ),
                                      child:Column(
                                        children: <Widget>[
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: <Widget>[
                                              Container(
                                                padding: EdgeInsets.only(top:2,bottom: 2, left:10, right: 10),
                                                decoration: BoxDecoration(
                                                  color:Colors.green,
                                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
                                                ),
                                                //padding: EdgeInsets.only(left: 15),
                                                child:Text(
                                                  'Matched',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(color: Colors.white, fontSize: 11.5,fontWeight: FontWeight.w400),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            width: getWidthByPercentage(100, context),
                                            margin: EdgeInsets.only(top:5, left:30),
                                            //padding: EdgeInsets.only(left: 15),
                                            child:Text(
                                              'Musical toy',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(color: Colors.black, fontSize: 13.5,fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            width: getWidthByPercentage(100, context),
                                            margin: EdgeInsets.only(top:5, left:30),
                                            //padding: EdgeInsets.only(left: 15),
                                            child:Text(
                                              '1 month ago',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(color: Colors.grey, fontSize: 12,fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Container(
                                            width: getWidthByPercentage(100, context),
                                            margin: EdgeInsets.only(top:20, left:30),
                                            //padding: EdgeInsets.only(left: 15),
                                            child:Text(
                                              'CATEGORY',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(color: Colors.grey, fontSize: 9.5,fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Container(
                                            width: getWidthByPercentage(100, context),
                                            margin: EdgeInsets.only(top:5, left:30),
                                            //padding: EdgeInsets.only(left: 15),
                                            child:Text(
                                              'Baby and Child',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(color: Colors.black, fontSize: 11.5,fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),

                                    ),
                                    Container(
                                      width: getWidthByPercentage(35, context),
                                      height: 135,
                                      margin: EdgeInsets.only(left: 20),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 2.0,
                                        ),],
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                      child:ClipRRect(
                                        borderRadius: BorderRadius.circular(11.0),
                                        child: Image(image:AssetImage("assets/images/toy.jpg"), fit: BoxFit.fitHeight,),
                                      ),

                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  !hasFirstPermissionCheck? Container(
                    width: getWidthByPercentage(100, context),
                    height:getHeightByPercentage(100, context),
                    alignment: AlignmentDirectional.center,
                    color:Color(0xaa141414),
                    child:Container(
                      width:getWidthByPercentage(70, context), height:getHeightByPercentage(25, context),
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child:Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top:22),
                            width:getWidthByPercentage(50, context),
                            child: Text(
                              'Allow "KChange" to access your location while you are using the app?',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            width:getWidthByPercentage(60, context),
                            margin: EdgeInsets.only(top:9, bottom: 15),
                            child: Text(
                              'KChange needs to access your location for adding search Criteria parameter',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w400),
                            ),
                          ),
                          Expanded(
                            flex:1,
                            child:Column(
                              children: <Widget>[
                                Container(
                                  width:getWidthByPercentage(70, context),
                                  height: 1,
                                  color:Colors.grey[300],
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex:1,
                                      child:InkWell(
                                        onTap: (){
                                          setState(() {
                                            hasFirstPermissionCheck = true;
                                            hasSecondPermissionCheck = false;
                                          });
                                        },
                                        child: Text(
                                          'Don\'t Allow',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(color: Colors.blue, fontSize: 14,fontWeight: FontWeight.w400),
                                        ),
                                      )
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: <Widget>[
                                        Container(
                                          width:1,
                                          height: 50,
                                          color:Colors.grey[300],
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                        flex:1,
                                        child:InkWell(
                                          onTap: (){
                                            setState(() {
                                              hasFirstPermissionCheck = true;
                                              hasSecondPermissionCheck = false;
                                            });
                                          },
                                          child: Text(
                                            'Allow',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(color: Colors.blue, fontSize: 14,fontWeight: FontWeight.w400),
                                          ),
                                        )
                                    )
                                  ],
                                ),
                              ],
                            )
                          ),
                        ],
                      ),
                    )
                  ):Container(),
                  !hasSecondPermissionCheck? Container(
                      width: getWidthByPercentage(100, context),
                      height:getHeightByPercentage(100, context),
                      alignment: AlignmentDirectional.center,
                      color:Color(0xaa141414),
                      child:Container(
                        width:getWidthByPercentage(70, context), height:getHeightByPercentage(25, context),
                        decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child:Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top:22),
                              width:getWidthByPercentage(50, context),
                              child: Text(
                                'Allow "KChange" Would Like to Send You Notifications',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              width:getWidthByPercentage(60, context),
                              margin: EdgeInsets.only(top:9, bottom: 15),
                              child: Text(
                                'Notifications may include alerts sounds, and icon badges. These can be configured in settings.',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black, fontSize: 11,fontWeight: FontWeight.w400),
                              ),
                            ),
                            Expanded(
                                flex:1,
                                child:Column(
                                  children: <Widget>[
                                    Container(
                                      width:getWidthByPercentage(70, context),
                                      height: 1,
                                      color:Colors.grey[300],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                            flex:1,
                                            child:InkWell(
                                              onTap: (){
                                                setState(() {
                                                  hasSecondPermissionCheck = true;
                                                });
                                              },
                                              child: Text(
                                                'Don\'t Allow',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(color: Colors.blue, fontSize: 14,fontWeight: FontWeight.w400),
                                              ),
                                            )
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: <Widget>[
                                            Container(
                                              width:1,
                                              height: 50,
                                              color:Colors.grey[300],
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            flex:1,
                                            child:InkWell(
                                              onTap: (){
                                                setState(() {
                                                  hasSecondPermissionCheck = true;
                                                });
                                              },
                                              child: Text(
                                                'Allow',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(color: Colors.blue, fontSize: 14,fontWeight: FontWeight.w400),
                                              ),
                                            )
                                        )
                                      ],
                                    ),
                                  ],
                                )
                            ),
                          ],
                        ),
                      )
                  ):Container(),
                ],
              ),
            ),
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

}