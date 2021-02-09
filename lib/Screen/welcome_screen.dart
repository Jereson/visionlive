import 'package:flutter/material.dart';
import 'package:visionlive/Screen/custom_nav.dart';
import 'package:visionlive/Screen/signup_screen.dart';
import 'package:visionlive/homepage.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool _isAuth;

  @override
  void initState() {
    super.initState();
    _isAuth = true;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: _isAuth ? Size.fromHeight(27.0) : Size.fromHeight(0.0),
        child: AppBar(
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  setState(() {
                    _isAuth = !_isAuth;
                  });
                },
                icon: Icon(Icons.clear,
                    color: Colors.black.withOpacity(0.3), size: 24.0)),
          ],
          elevation: 0.0,
          automaticallyImplyLeading: false, // hides leading widget
          // flexibleSpace: Text('App', style: TextStyle(color: Colors.white),),
        ),
      ),
      body: _isAuth
          ? Stack(
              children: <Widget>[
                Container(
                  height: size.height,
                  width: size.width,
                  child: Opacity(
                    opacity: 0.5,
                    child: CustomNavScreen(),
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width,
                  child: SignUpScreen(),
                ),
              ],
            )
          : CustomNavScreen(),
    );
  }
}
