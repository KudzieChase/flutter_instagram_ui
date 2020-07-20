class Comment {
  String username;
  String comment;
  String profileImageUri;
  int likes;
  int replies;

  Comment(
      {this.username,
      this.comment,
      this.profileImageUri,
      this.likes,
      this.replies});
}

List<Comment> comments = [
  Comment(
      username: "random_guy",
      comment: "Yo yo yo",
      profileImageUri: "https://via.placeholder.com/100",
      likes: 2,
      replies: 1),
  Comment(
      username: "random_girl",
      comment: "Nxah bad code everywhere",
      profileImageUri: "https://via.placeholder.com/100",
      likes: 2,
      replies: 1),
  Comment(
      username: "smart_human",
      comment: "Not difficult to recreate",
      profileImageUri: "https://via.placeholder.com/100",
      likes: 2,
      replies: 1),
  Comment(
      username: "not_a_human",
      comment: "Bark Bark",
      profileImageUri: "https://via.placeholder.com/100",
      likes: 2,
      replies: 1),
  Comment(
      username: "a_cat",
      comment: "Meow shaa",
      profileImageUri: "https://via.placeholder.com/100",
      likes: 2,
      replies: 1),
  Comment(
      username: "doge_but_coin",
      comment: "Send me doge coin",
      profileImageUri: "https://via.placeholder.com/100",
      likes: 2,
      replies: 1),
  Comment(
      username: "random_comment",
      comment: "This means nothing",
      profileImageUri: "https://via.placeholder.com/100",
      likes: 2,
      replies: 1),
  Comment(
      username: "random_yeah",
      comment: "KO Mukuru wati kudii",
      profileImageUri: "https://via.placeholder.com/100",
      likes: 2,
      replies: 1),
];
