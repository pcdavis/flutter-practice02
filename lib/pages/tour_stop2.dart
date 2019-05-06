import 'package:flutter/material.dart';
import '../widgets/audio_playback.dart';

class TourStopDetails {
  final String id;
  final String stopName;
  final String stopNumber;
  final int stopOrdinal;
  final String synopsis;
  final String backdropPath;
  final List<TourStory> tourStories;

  TourStopDetails({
    this.id,
    this.stopName,
    this.stopNumber,
    this.stopOrdinal,
    this.synopsis,
    this.backdropPath,
    this.tourStories,
  });
}

class TourStory {
  final String id;
  final String name;
  final String storyType;
  final String storyContent; //temp until figure out how to include content

  TourStory({this.id, this.name, this.storyType, this.storyContent});
}

final tour = TourStopDetails(
    backdropPath:
        'https://cdn.pixabay.com/photo/2017/03/21/12/20/view-2162026_1280.jpg',
    stopName: 'McPherson Ridge',
    synopsis:
        "This is the location where General McPherson was mortally wounded while leading the regiments of the Iron Brigade into the woods. Learn more by clicking on the tour stop stories.",
    tourStories: [
      TourStory(name: 'The Iron Brigade'),
    ]);

class TourStop2 extends StatelessWidget {
  const TourStop2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData localTheme = Theme.of(context);
    return Container(
      child: Column(
        children: <Widget>[
          Image(
            image: NetworkImage(tour.backdropPath),
            fit: BoxFit.fitWidth,
          ),
          Text(
            tour.stopName,
            style: localTheme.textTheme.display1,
          ),
          Text(
            tour.synopsis,
            style: localTheme.textTheme.body1,
          ),
          Text(
            "Stories",
            style: localTheme.textTheme.body1,
          ),
          AudioPlayButton(),
          Text(
            tour.tourStories[0].name,
            style: localTheme.textTheme.body1,
          ),
        ],
      ),
    );
  }
}
