import 'dart:async';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:visionlive/Screen/signup_screen.dart';

import 'model/data_provider.dart';
import 'model/sliderImages.dart';
import 'widgets/video_detail.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 0), () {
  //     Navigator.of(context).push(PageRouteBuilder(
  //         opaque: false,
  //         pageBuilder: (BuildContext context, _, __) => SignUpScreen()));
  //   });
  // }

  // @override
  // void dispose() {
  //   Timer(Duration(seconds: 0), () {
  //     Navigator.of(context).push(PageRouteBuilder(
  //         opaque: false,
  //         pageBuilder: (BuildContext context, _, __) => SignUpScreen()));
  //   });
  //   super.dispose();
  // }

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
    final dataProvider =
        Provider.of<DataProvider>(context, listen: false).dataProvider;
    return LayoutBuilder(builder: (context, constrains) {
      return Scaffold(
        // backgroundColor: Colors.white.withOpacity(0.85),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(10.0),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            automaticallyImplyLeading: false, // hides leading widget
            // flexibleSpace: Text('App', style: TextStyle(color: Colors.white),),
          ),
        ),
        body: Column(
          children: <Widget>[
            //List of Images with Carousel
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              height: 180.0,
              child: Card(
                child: Carousel(
                  images: sliderImages.map((e) => AssetImage(e)).toList(),
                  dotSize: 4.0,
                  dotSpacing: 10.0,
                  dotColor: Colors.grey,
                  indicatorBgPadding: 8.0,
                  dotIncreasedColor: Color(0xff00dccd),
                  dotBgColor: Colors.white,
                  borderRadius: true,
                  autoplay: false,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              height: 38.0,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _upInkWell('Nearby'),
                  // _upInkWell('Popular',),
                  InkWell(
                    child: Text(
                      'Popular',
                      style: TextStyle(
                          color: Color(0xff00dccd),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                    onTap: () {},
                  ),
                  _upInkWell('Games'),
                  _upInkWell('PK'),
                  InkWell(
                    child: Icon(Icons.search),
                    onTap: () {},
                  ),
                  InkWell(
                    child: Icon(Icons.notifications),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              height: 30.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _catigoryButtons(Color(0xff00dccd), 'All'),
                  SizedBox(width: 12),
                  _catigoryButtons(Colors.grey.withOpacity(0.2), 'Recommended'),
                  SizedBox(width: 12),
                  _catigoryButtons(
                      Colors.grey.withOpacity(0.2), 'Rising Stars'),
                  SizedBox(width: 12),
                  _catigoryButtons(Colors.grey.withOpacity(0.2), 'New'),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 14.0, bottom: 8.0, left: 8.0, right: 8.0),
                child: GridView.builder(
                  itemCount: dataProvider.length,
                  itemBuilder: (context, i) {
                    return VideoDetail(
                      dataProvider[i].id,
                      dataProvider[i].title,
                      dataProvider[i].description,
                      dataProvider[i].image,
                      dataProvider[i].videoUrl,
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

Widget _catigoryButtons(
  Color color,
  String text,
) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 6),
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(12.0)),
    child: Text(
      text,
      style: TextStyle(fontSize: 13.0, color: Colors.black.withOpacity(0.5)),
    ),
  );
}

Widget _upInkWell(String text) {
  return InkWell(
    child: Text(
      text,
      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),
    ),
    onTap: () {},
  );
}
