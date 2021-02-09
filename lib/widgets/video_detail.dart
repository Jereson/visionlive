import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visionlive/Screen/show_video.dart';
import 'package:visionlive/model/dataModel.dart';

class VideoDetail extends StatelessWidget {
  final int id;
  final String title;
  final String description;
  final String image;
  final String videoUrl;

  VideoDetail(this.id, this.title, this.description, this.image, this.videoUrl);
  @override
  Widget build(BuildContext context) {
    // var titl = Provider.of<DataModel>(context, listen: false).title;
    return GridTile(
      header: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Text(''),
            Spacer(),
            Text(
              id.toString(),
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      child: GestureDetector(
        onTap: () {
          // Navigator.of(context).pushNamed(
          //   ShowVideoScreen.routeName,
          //   arguments: title,
          // );

          
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(image,
              // dataProvider[i].image,
              fit: BoxFit.cover),
        ),
      ),
      footer: Row(
        children: <Widget>[
          Icon(
            Icons.volume_down,
            color: Colors.white.withOpacity(0.7),
          ),
          Text(description,
              // dataProvider[i].description,
              style: TextStyle(color: Colors.white.withOpacity(0.7)))
        ],
      ),
    );
    ;
  }
}
