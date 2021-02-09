// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:video_player/video_player.dart';
// import 'package:visionlive/model/data_provider.dart';

// class PlayerVideo extends StatefulWidget {
//   final String video;
//   PlayerVideo({@required this.video});

//   @override
//   _PlayerVideoState createState() => _PlayerVideoState();
// }

// class _PlayerVideoState extends State<PlayerVideo>
//     with SingleTickerProviderStateMixin {
//   VideoPlayerController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.asset(widget.video)
//       ..initialize().then((value) => _controller.play());
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return InkWell(
//       onTap: () {
//         setState(() {
//           _controller.value.isPlaying
//               ? _controller.pause()
//               : _controller.play();
//         });
//       },
//       child: Container(
//         height: size.height,
//         width: size.width,
//         child: Stack(
//           children: <Widget>[
//             Container(
//               height: size.height,
//               width: size.width,
//               // color: Colors.red,
//               child: VideoPlayer(_controller),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
