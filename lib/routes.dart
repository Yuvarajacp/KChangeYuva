import 'package:flutter/material.dart';
import 'package:kchange/screens/Item/item_info.dart';
import 'package:kchange/screens/home/home_screen.dart';
import 'package:kchange/screens/login/index.dart';
import 'package:kchange/screens/registration/index.dart';
import 'package:kchange/screens/registration/terms_and_conditions/index.dart';

import 'screens/registration/otp_validation/index.dart';

class Routes {
  final routes = <String, WidgetBuilder>{
    '/Login': (BuildContext context) => new LoginScreen(),
    '/Registration': (BuildContext context) => new RegistrationScreen(),
    '/TermsAndConditions': (BuildContext context) => new TermsAndConditions(),
    '/OtpValidation': (BuildContext context) => new OtpScreen(),
    '/HomeScreen': (BuildContext context) => new HomeScreen(),
    '/ItemInfoScreen': (BuildContext context) => new ItemInfoScreen(),
  };

  Routes () {
    runApp(new MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/HomeScreen',
      routes: routes,
    ));
  }
}



