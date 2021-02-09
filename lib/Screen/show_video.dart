// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:visionlive/Screen/player_video.dart';
// import 'package:visionlive/model/dataModel.dart';
// import 'package:visionlive/model/data_provider.dart';

// class ShowVideoScreen extends StatefulWidget {
//   // final String title;
//   // // // final String images;
//   // ShowVideoScreen([this.title]);

//   static const routeName = '/show_video';

//   @override
//   _ShowVideoScreenState createState() => _ShowVideoScreenState();
// }

// class _ShowVideoScreenState extends State<ShowVideoScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final videoTitle = ModalRoute.of(context).settings.arguments as String;

//     var dataProvider =
//         Provider.of<DataProvider>(context, listen: false).findById(videoTitle);

//     return SafeArea(
//       child: Scaffold(
//         body: Stack(
//           children: <Widget>[
//             Container(child: PlayerVideo(video: dataProvider.videoUrl)
//                 // Text(dataProvider.description),
//                 ),

//             //Clear Button
//             Positioned(
//               top: 8.0,
//               right: 4.0,
//               child: _clearButton(),
//             ),
//             Positioned(
//               top: 8.0,
//               left: 8.0,
//               child: Row(
//                 children: <Widget>[
//                   Container(
//                     height: 30.0,
//                     width: 140.0,
//                     margin: const EdgeInsets.only(right: 4.0),
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         color: Colors.white.withOpacity(0.8),
//                       ),
//                       gradient: LinearGradient(
//                         begin: Alignment.centerLeft,
//                         end: Alignment.centerRight,
//                         colors: [
//                           Colors.grey.withOpacity(0.9),
//                           Colors.black.withOpacity(0.7)
//                         ],
//                       ),
//                       borderRadius: BorderRadius.circular(18.0),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Container(
//                           height: 28.0,
//                           width: 28.0,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(30),
//                             border: Border.all(
//                               color: Colors.white.withOpacity(0.8),
//                             ),
//                           ),
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(20),
//                             child: Image.asset(
//                               dataProvider.image,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.all(3.0),
//                           height: 24.0,
//                           width: 24.0,
//                           decoration: BoxDecoration(
//                             color: Color(0xff00dccd),
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           child: Icon(
//                             Icons.add,
//                             color: Colors.white,
//                             size: 20.0,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   _friends(dummyProfile[0]),
//                   Container(
//                     width: 180,
//                     height: 28,
//                     // color: Colors.red,
//                     // child: Expanded(
//                     child: ListView.builder(
//                       itemCount: dummyImages.length,
//                       scrollDirection: Axis.horizontal,
//                       itemBuilder: (context, i) {
//                         return Padding(
//                           padding: const EdgeInsets.only(left: 4.0),
//                           child: _friends(dummyImages[i]),
//                         );
//                       },
//                     ),
//                     // ),
//                   ),
//                 ],
//               ),
//             ),

//             Positioned(bottom: 1.0, left: 1.0, child: _buttomColumn())
//           ],
//         ),
//       ),
//     );
//   }
// }

// Widget _friends(String image) {
//   return Container(
//     height: 26.0,
//     width: 26.0,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(30),
//     ),
//     child: ClipRRect(
//       borderRadius: BorderRadius.circular(20),
//       child: Image.asset(
//         image,
//         fit: BoxFit.cover,
//       ),
//     ),
//   );
// }

// Widget _clearButton() {
//   return InkWell(
//     onTap: () {},
//     child: Icon(
//       Icons.clear,
//       color: Colors.white.withOpacity(0.8),
//     ),
//   );
// }

// Widget _buttomColumn() {
//   return Column(
//     children: <Widget>[
//       Text(
//         'Abuse or any copyright infringment '
//         'is NOT \nallowed and will be banned.'
//         'Live broadcasts is \nmonitored 24 hours'
//         'a day. \nWaring: Third-party Top-Up or'
//         'recharge is \nsubject to account closure,'
//         'suspension, or \npermanent ban',
//         style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 12.0),
//         textAlign: TextAlign.left,
//       ),
//     ],
//   );
// }
