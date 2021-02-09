import 'package:flutter/foundation.dart';

import 'dataModel.dart';

class DataProvider with ChangeNotifier {
  List<DataModel> dataProvider = [
    DataModel(
      id: 23,
      title: 'Ttile',
      description: 'I like this',
      image: 'assets/images/girls1.jpg',
      // videoUrl: 'assets/videos/football_comic.mp4',
    ),
    DataModel(
      id: 43,
      title: 'Haha',
      description: 'Wath to the end',
      image: 'assets/images/girls2.jpg',
      // videoUrl: 'assets/videos/laff_crack.mp4',
    ),
    DataModel(
      id: 283,
      title: 'Seeme',
      description: 'Wath to the end',
      image: 'assets/images/girls3.jpg',
      // videoUrl: 'assets/videos/laff_crack.mp4',
    ),
    DataModel(
      id: 243,
      title: 'Carye',
      description: 'Wath to the end',
      image: 'assets/images/girls4.jpg',
      // videoUrl: 'assets/videos/football_comic.mp4',
    ),
    DataModel(
      id: 378,
      title: 'Egdty',
      description: 'Wath to the end',
      image: 'assets/images/girls5.jpg',
      // videoUrl: 'assets/videos/try_not_to_touch.mp4',
    ),
    DataModel(
      id: 987,
      title: 'Sertry',
      description: 'Wath to the end',
      image: 'assets/images/girls1.jpg',
      // videoUrl: 'assets/videos/football_comic.mp4',
    ),
    DataModel(
      id: 35,
      title: 'Seecme',
      description: 'Wath to the end',
      image: 'assets/images/girls7.jpg',
      // videoUrl: 'assets/videos/football_comic.mp4',
    ),
    DataModel(
      id: 546,
      title: 'Sertye',
      description: 'Wath to the end',
      image: 'assets/images/girls8.jpg',
      // videoUrl: 'assets/videos/try_not_to_touch.mp4',
    ),
  ];

  DataModel findById(String titl) {
    return dataProvider.firstWhere((element) => element.title == titl);
  }
}

List<String> dummyImages = [
  'assets/images/girls1.jpg',
  'assets/images/girls2.jpg',
  'assets/images/girls3.jpg',
  'assets/images/girls4.jpg',
  'assets/images/girls5.jpg',
];

List<String> dummyProfile = ['assets/images/profile.png'];
