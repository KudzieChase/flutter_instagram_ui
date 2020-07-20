class Story {
  String username;
  String imageUri;
  bool isWatched;

  Story({this.username, this.imageUri, this.isWatched});
}

List<Story> stories = [
  Story(
      username: "Your Story",
      imageUri: "https://api.adorable.io/avatars/100/abott@adorable.png",
      isWatched: false),
  Story(
      username: "oneplus",
      imageUri: "https://i.pravatar.cc/100",
      isWatched: true),
  Story(
      username: "apple",
      imageUri: "https://i.pravatar.cc/100",
      isWatched: true),
  Story(
      username: "windows",
      imageUri: "https://i.pravatar.cc/100",
      isWatched: false),
  Story(
      username: "someone",
      imageUri: "https://i.pravatar.cc/100",
      isWatched: false),
  Story(
      username: "random_guy",
      imageUri: "https://i.pravatar.cc/100",
      isWatched: false),
  Story(
      username: "random_girl",
      imageUri: "https://i.pravatar.cc/100",
      isWatched: false),
  Story(
      username: "flutter_test",
      imageUri: "https://i.pravatar.cc/100",
      isWatched: false),
  Story(
      username: "fast_learner",
      imageUri: "https://i.pravatar.cc/100",
      isWatched: false),
];
