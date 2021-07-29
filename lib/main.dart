import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:onetooneres/Ui/auth/Login.dart';
import 'package:onetooneres/Ui/auth/Siginup.dart';
import 'package:onetooneres/utils/resposive.dart';

import 'Ui/landingpage/LandingPage/LandingPage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, oriantion) {
        AppSizeConfig().init(constraints, oriantion);
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'OnetoOnereso',
            theme: ThemeData(
              brightness: Brightness.light,

              primarySwatch: Colors.amber,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),

            home: LandingPage()
        );
      }
      );
    }
    );
  }

}