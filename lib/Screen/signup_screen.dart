import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:visionlive/homepage.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.85),
        resizeToAvoidBottomPadding: false,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(10.0),
          child: AppBar(
            backgroundColor: Colors.grey.withOpacity(0.05),
            elevation: 0.0,
            automaticallyImplyLeading: false,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 14.0, bottom: 14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 90,
                    child: Image.asset('assets/images/gigo.png'),
                  ),
                  Text(
                    'VISION LIVE',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'LIVE YOUR MOMENTS',
                    style:
                        TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 30.0),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text(
                      'Sign in experience complete function',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  signInButton(
                    context,
                    Image.asset('assets/images/facebook.png'),
                    'Sign in with Facebook',
                    Color(0xff1979f2),
                    Colors.white.withOpacity(0.8),
                  ),
                  SizedBox(height: 12.0),
                  signInButton(
                    context,
                    Image.asset('assets/images/google.png'),
                    'Sign in with Facebook',
                    Colors.white,
                  ),
                  SizedBox(height: 12.0),
                  signInButton(
                    context,
                    Icon(
                      Icons.phone_android,
                      color: Colors.white,
                    ),
                    'Sign in with Facebook',
                    Color(0xff00dec9),
                    Colors.white.withOpacity(0.8),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.20,
                        height: 10.0,
                        child: Divider(),
                      ),
                      SizedBox(width: 26.0),
                      Text(
                        'OR',
                        style: TextStyle(
                            color: Colors.blueGrey[200],
                            // fontWeight: FontWeight.bold,
                            fontSize: 17.0),
                      ),
                      SizedBox(width: 26.0),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.20,
                        height: 10.0,
                        child: Divider(),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.0),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.65,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 36.0,
                          child: Image.asset('assets/images/twitter.png'),
                        ),
                        Container(
                          height: 36,
                          child: Image.asset('assets/images/telegram.png'),
                        ),
                        Container(
                          height: 36.0,
                          child: Image.asset('assets/images/apple.png'),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                'Login means you agree to Terms of Use, '
                'Broadcaster Agreement & Privacy Policy. '
                '(You have to be the Minimum Age to use Vision Live \n Power by bigo.sg',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 10.0,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

Widget signInButton(
    BuildContext context, Widget widget, String text, Color color,
    [Color textColor, Function function]) {
  return InkWell(
    onTap: function,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      // constraints: ,
      alignment: Alignment.center,
      height: 45.0,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: <Widget>[
          Container(height: 32.0, child: widget),
          SizedBox(
            width: 45,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}
