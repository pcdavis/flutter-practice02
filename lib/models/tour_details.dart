class TourStopDetails {
  var id;
  final String tourStopTitle;
  final String stopNumber;
  final int stopOrdinal;
  final String synopsis;
  final String backdropPath;
  final List<TourStory> tourStories;

  TourStopDetails(
      {this.id,
      this.tourStopTitle,
      this.stopNumber,
      this.stopOrdinal,
      this.synopsis,
      this.backdropPath,
      this.tourStories});
}

class TourStory {
  var id;
  final String name;
  final String storyType;
  final String storyContent; //temp until figure out how to include content

  TourStory(this.id, this.name, this.storyType, this.storyContent);
}
