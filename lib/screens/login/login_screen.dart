import 'package:flutter/material.dart';
import 'package:kchange/util/screen_util.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }

}

class _LoginScreenState extends State<LoginScreen>{
  bool hasPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Container(
            width: getWidthByPercentage(100, context),
            color: Color(0xffe6d40e),
            padding: EdgeInsets.only(top: getHeightByPercentage(6, context),),
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
                  margin: EdgeInsets.only(top:42),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.black87, fontSize: 29,fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: getWidthByPercentage(100, context),
            height: getHeightByPercentage(75, context),
            margin: EdgeInsets.only(top: getHeightByPercentage(25, context),),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(29.0),
                topRight: Radius.circular(29.0),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  Container(
                    width: getWidthByPercentage(80, context),
                    margin: EdgeInsets.only(top:49),
                    //padding: EdgeInsets.only(left: 15),
                    child:TextField(
                        decoration:InputDecoration(
                          border:OutlineInputBorder(),
                          labelText: 'User Id (Phone Number)',
                        )
                    ),
                  ),
                  Container(
                    width: getWidthByPercentage(80, context),
                    margin: EdgeInsets.only(top:19),
                    //padding: EdgeInsets.only(left: 15),
                    child:TextField(
                        decoration:InputDecoration(
                          border:OutlineInputBorder(),
                          labelText: 'Password',
                        )
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      /*Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => homescreen()),
                      );*/
                    },
                    child: Container(
                      width: getWidthByPercentage(80, context),
                      margin: EdgeInsets.only(top:29, bottom: 9),
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color(0xffe6d40e),
                          border: Border.all(color: Color(0xffe6d40e), width: 1.1),
                          borderRadius: BorderRadius.all(Radius.circular(9))
                      ),
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.black87, fontSize: 16.5),
                      ),
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      'Forgot Password ?',
                      style: TextStyle(color: Colors.black87, fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:93),
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      'Don\'t have an account',
                      style: TextStyle(color: Colors.black54, fontSize: 15),
                    ),
                  ),
                  InkWell(
                    onTap: (){

                      Navigator.pushNamed(context, '/Registration');

                    },
                    child: Container(
                      width: getWidthByPercentage(80, context),
                      margin: EdgeInsets.only(top:14),
                      height: 49,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black87, width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(9))
                      ),
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'Registration',
                        style: TextStyle(color: Colors.black87, fontSize: 16.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}