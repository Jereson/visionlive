import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visionlive/Screen/signup_screen.dart';
import 'package:visionlive/Screen/welcome_screen.dart';
import 'package:visionlive/homepage.dart';
import 'package:visionlive/model/dataModel.dart';
import 'Screen/show_video.dart';
import 'model/data_provider.dart';
import 'Screen/custom_nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: DataProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Vision Live',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        // home: HomePage(),
        // home: SignUpScreen(),
        // home: NavigationScreen(),
        // home: PersitantNav(),
        home: WelcomeScreen(),
        // home: ShowVideoScreen(),
        // home: CustomNavScreen(),

        routes: {
          // ShowVideoScreen.routeName: (ctx) => ShowVideoScreen(),
          // PersitantNav.routeName: (ctx) => PersitantNav(),
        },
      ),
    );
  }
}
