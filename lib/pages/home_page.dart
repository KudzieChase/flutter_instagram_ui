import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_instgram/model/post.dart';
import 'package:my_instgram/model/story.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              elevation: 0.0,
              leading: IconButton(
                  icon: Icon(FontAwesomeIcons.camera),
                  color: Colors.black,
                  onPressed: () {}),
              centerTitle: false,
              title: SizedBox(
                height: 45.0,
                child: Image(
                    image: AssetImage("assets/images/instagram_logo.png")),
              ),
              actions: <Widget>[
                IconButton(
                    icon: Icon(FontAwesomeIcons.instagram),
                    color: Colors.black,
                    onPressed: () {}),
                IconButton(
                    icon: Icon(FontAwesomeIcons.paperPlane),
                    color: Colors.black,
                    onPressed: () {})
              ],
              backgroundColor: new Color(0xfff8faf8),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 95,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: stories.length,
                    itemBuilder: (BuildContext context, int index) {
                      Story story = stories[index];
                      return StoryItemWidget(story);
                    }),
              ),
            ),
            SliverToBoxAdapter(
              child: Divider(
                color: Colors.black26,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                Post post = posts[index];
                return PostItemWidget(post);
              }, childCount: posts.length),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                title: Text("Home"), icon: Icon(FontAwesomeIcons.home)),
            BottomNavigationBarItem(
                title: Text("Search"), icon: Icon(FontAwesomeIcons.search)),
            BottomNavigationBarItem(
                title: Text("Upload"), icon: Icon(FontAwesomeIcons.upload)),
            BottomNavigationBarItem(
                title: Text("Notification"),
                icon: Icon(FontAwesomeIcons.heart)),
            BottomNavigationBarItem(
                title: Text("Profile"), icon: Icon(FontAwesomeIcons.user)),
          ]),
    );
  }
}

class PostItemWidget extends StatelessWidget {
  Post _post;

  PostItemWidget(this._post);

  Widget _makePagerWidget(int index) {
    String _imageUri = _post.postImages[index];
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(_imageUri))));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 6.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(_post.profileImageUri),
                ),
              ),
              Expanded(flex: 1, child: Container(child: Text(_post.username))),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Icon(Icons.more_vert))
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  height: 350,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children: _post.postImages
                        .asMap()
                        .entries
                        .map((e) => _makePagerWidget(e.key))
                        .toList(),
                    pageSnapping: true,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 8.0,
              ),
              Icon(FontAwesomeIcons.heart),
              SizedBox(
                width: 16.0,
              ),
              Icon(FontAwesomeIcons.comment),
              SizedBox(
                width: 16.0,
              ),
              Icon(FontAwesomeIcons.paperPlane),
              SizedBox(
                width: 8.0,
              ),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 8.0),
                      alignment: Alignment.centerRight,
                      child: Icon(FontAwesomeIcons.bookmark))),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 8.0,
              ),
              Text("Liked by "),
              Text(
                "elonmusk ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("and "),
              Text(
                "${_post.likes} others",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ), //
          SizedBox(
            height: 4.0,
          ), // Liked by x and y othere
          Row(
            children: <Widget>[
              SizedBox(
                width: 8.0,
              ),
              Text("${_post.username} "),
              Text("${_post.description}")
            ],
          ),
          SizedBox(
            height: 4.0,
          ), //username + desc
          Row(
            children: <Widget>[
              SizedBox(
                width: 8.0,
              ),
              Text("View all ${_post.comments.length} comments")
            ],
          ),
          SizedBox(
            height: 4.0,
          ), // view all x comments
          Row(),
          SizedBox(
            height: 4.0,
          ), //comment preview
          Row(), // avatar + add comment
        ],
      ),
    );
  }
}

class StoryItemWidget extends StatelessWidget {
  Story _story;

  StoryItemWidget(this._story);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 10.0),
      height: 100,
      width: 90,
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 63,
                height: 63,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient:
                        LinearGradient(colors: [Colors.yellow, Colors.red])),
              ),
              ClipOval(
                child: Image(
                    width: 60,
                    height: 60,
                    image: NetworkImage(_story.imageUri)),
              )
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            _story.username,
            style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
