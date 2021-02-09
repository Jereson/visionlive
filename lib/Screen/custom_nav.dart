import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:visionlive/Screen/profile_screen.dart';
import 'package:visionlive/Screen/search_screen.dart';
import 'package:visionlive/Screen/signup_screen.dart';
import 'package:visionlive/homepage.dart';
import 'package:visionlive/widgets/signin_butto.dart';

import 'notification_screen.dart';

class CustomNavScreen extends StatefulWidget {
  @override
  _CustomNavScreenState createState() => _CustomNavScreenState();
}

class _CustomNavScreenState extends State<CustomNavScreen> {
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: getFooter(),
        body: getBody(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton.extended(
              backgroundColor: Color(0xff00dccd),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SignUpScreen(),
                ),
              ),
              label: Container(child: Text('Sign in')),
            ),
            SizedBox(height: 10.0),
            InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SignUpScreen(),
                ),
              ),
              child: Container(
                height: 45.0,
                width: 45.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Color(0xff00dccd),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 12.0),
          ],
        ));
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: <Widget>[
        HomePage(),
        NotificationScreen(),
        SignUpScreen(),
        SearchScreen(),
        ProfileScreen(),
      ],
    );
  }

  Widget getFooter() {
    List bottomItems = [
      {"icon": Icons.home, "isIcon": true},
      {"icon": Icons.search, "isIcon": true},
      {"icon": "", "isIcon": false},
      {"icon": Icons.star_border, "isIcon": true},
      {"icon": Icons.person_outline, "isIcon": true},
    ];
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 40,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          bottomItems.length,
          (index) {
            return bottomItems[index]['isIcon']
                ? InkWell(
                    onTap: () {
                      selectedIndex(index);
                    },
                    child: Icon(
                      bottomItems[index]['icon'],
                      color: index == pageIndex ? Colors.black : Colors.grey,
                    ),
                  )
                : InkWell(
                    onTap: () {
                      selectedIndex(index);
                    },
                    child: SizedBox.shrink(),
                  );
          },
        ),
      ),
    );
  }

  selectedIndex(
    index,
  ) {
    setState(() {
      pageIndex = index;
    });
  }
}
