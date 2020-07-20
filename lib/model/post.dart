import 'comment.dart';

class Post {
  String username;
  String profileImageUri;
  List<String> postImages;
  int likes;
  List<Comment> comments;
  bool isBookmarked;
  String description;

  Post(
      {this.username,
      this.profileImageUri,
      this.postImages,
      this.likes,
      this.comments,
      this.isBookmarked,
      this.description});
}

List<Post> posts = [
  Post(
      username: "kudziechase",
      profileImageUri: "",
      postImages: [
        "https://i.pravatar.cc/300",
        "https://via.placeholder.com/300",
        "https://i.pravatar.cc/300"
      ],
      likes: 200,
      comments: comments,
      isBookmarked: false,
      description: "If you love me, say something!"),
  Post(
      username: "oneplus",
      profileImageUri: "",
      postImages: ["https://i.pravatar.cc/300", "https://i.pravatar.cc/300"],
      likes: 200,
      comments: comments,
      isBookmarked: false,
      description: "Never settle"),
  Post(
      username: "theverge",
      profileImageUri: "",
      postImages: [
        "https://i.pravatar.cc/300",
        "https://i.pravatar.cc/300",
        "https://i.pravatar.cc/300"
      ],
      likes: 200,
      comments: comments,
      isBookmarked: false,
      description: "How do you add emojies to this"),
  Post(
      username: "androidauthority",
      profileImageUri: "",
      postImages: ["https://i.pravatar.cc/300"],
      likes: 200,
      comments: comments,
      isBookmarked: false,
      description: "Flutter is good for UIs yes."),
  Post(
      username: "calm",
      profileImageUri: "",
      postImages: [
        "https://i.pravatar.cc/300",
        "https://i.pravatar.cc/300",
        "https://i.pravatar.cc/300"
      ],
      likes: 200,
      comments: comments,
      isBookmarked: false,
      description: "Literally takes around 2 days to learn all this."),
  Post(
      username: "apple",
      profileImageUri: "",
      postImages: ["https://i.pravatar.cc/300", "https://i.pravatar.cc/300"],
      likes: 1000,
      comments: comments,
      isBookmarked: false,
      description: "Wot!!"),
  Post(
      username: "tim_apple",
      profileImageUri: "",
      postImages: ["https://i.pravatar.cc/300"],
      likes: 20,
      comments: comments,
      isBookmarked: false,
      description: "Tim Apple? how bout donald trumpet"),
];
