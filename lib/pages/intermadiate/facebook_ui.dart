import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FaceBookUI extends StatefulWidget {
  const FaceBookUI({super.key});
  static const String id = "FaceBookUI";

  @override
  State<FaceBookUI> createState() => _FaceBookUIState();
}

class _FaceBookUIState extends State<FaceBookUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("facebook", style: TextStyle(color: Colors.blueAccent, fontSize: 30, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search, color: Colors.grey[800],)),
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt, color: Colors.grey[800],))
        ],
        elevation: 0,
      ),

      backgroundColor: Colors.grey[300],

      body: ListView(
        children: [
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 0),
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            height: 120,
            child: Column(
              children: [
                Expanded(
                    child: Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/images/profile-picture.jpeg"),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                            child: Container(
                              height: 46,
                              padding: EdgeInsets.only(left: 15, right: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey
                                )
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "What is on your mind?",
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.grey[700])
                                ),
                              ),
                            )
                        )
                      ],
                    )
                ),
                Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.video_call, color: Colors.redAccent,),
                                SizedBox(width: 5,),
                                Text("Live")
                              ],
                            )
                        ),
                        Container(
                          width: 1,
                          margin: EdgeInsets.only(top: 14, bottom: 14),
                          color: Colors.grey[300],
                        ),
                        Expanded(
                            child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.photo, color: Colors.green,),
                                SizedBox(width: 5,),
                                Text("Photo")
                              ],
                            )
                        ),
                        Container(
                          width: 1,
                          margin: EdgeInsets.only(top: 14, bottom: 14),
                          color: Colors.green[300],
                        ),
                        Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.location_on, color: Colors.redAccent,),
                                SizedBox(width: 5,),
                                Text("Check in")
                              ],
                            )
                        )
                      ],
                    )
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 200,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            color: Colors.white,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10,),
                makeStory(
                  storyImage: "assets/images/giel.png",
                  userImage: "assets/images/profile-picture.jpeg",
                  userName: "User one"
                ),
                makeStory(
                  storyImage: "assets/images/profile-picture.jpeg",
                  userImage: "assets/images/giel.png",
                  userName: "User Two"
                ),
                makeStory(
                    storyImage: "assets/images/giel.png",
                    userImage: "assets/images/profile-picture.jpeg",
                    userName: "User Three"
                ),
                makeStory(
                    storyImage: "assets/images/profile-picture.jpeg",
                    userImage: "assets/images/giel.png",
                    userName: "User Four"
                ),
                makeStory(
                    storyImage: "assets/images/giel.png",
                    userImage: "assets/images/profile-picture.jpeg",
                    userName: "User Five"
                ),
              ],
            ),
          ),
          makeFeed(
            userName: "User Three",
            userImage: "assets/images/profile-picture.jpeg",
            feedTime: "1 hr ago",
            feedText: "One day!!!",
            feedImage: "assets/images/giel.png"
          ),
          makeFeed(
              userName: "User One",
              userImage: "assets/images/giel.png",
              feedTime: "2 hr ago",
              feedText: "Second Day!!!",
              feedImage: "assets/images/profile-picture.jpeg"
          ),
          makeFeed(
              userName: "User Four",
              userImage: "assets/images/giel.png",
              feedTime: "3 hr ago",
              feedText: "The same!!!",
              feedImage: "assets/images/giel.png"
          ),

        ],
      ),
    );
  }
}

Widget makeStory({storyImage, userImage, userName}) {
  return AspectRatio(
      aspectRatio: 1.3/2,
    child: Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(storyImage),
          fit: BoxFit.cover
        )
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.1)
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blueAccent, width: 2),
                image: DecorationImage(
                  image: AssetImage(userImage),
                  fit: BoxFit.cover
                )
              ),
            ),
            Text(userName, style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    ),
  );
}

Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(userImage),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(userName, style: TextStyle(color: Colors.grey[900], fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1),),
                          SizedBox(height: 3,),
                          Text(feedTime, style: TextStyle(fontSize: 15, color: Colors.grey),)
                        ],
                      )
                    ],
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz, size: 30, color: Colors.grey[600],))
                ],
              ),
              SizedBox(height: 20,),
              Text(feedText, style: TextStyle(fontSize: 15, color: Colors.grey[800], height: 1.5, letterSpacing: .7),),
              SizedBox(height: 20,)
            ],
          ),
        ),
        Container(
          height: 240,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(feedImage),
              fit: BoxFit.cover
            )
          ),
        ),
        SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  makeLike(),
                  Transform.translate(
                      offset: Offset(-5,0),
                      child: makeLove(),
                  ),
                  SizedBox(height: 5,),
                  Text("2.5K", style: TextStyle(fontSize: 15, color: Colors.grey[800]),)
                ],
              ),
              Text("400 comments", style: TextStyle(fontSize: 13, color: Colors.grey[800]),)
            ],
          ),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            makeLikeButton(isActive: true),
            makeCommentButton(),
            makeShareButton()
          ],
        ),
        SizedBox(height: 10,)
      ],
    ),
  );
}

Widget makeLike() {
  return Container(
    width: 25,
    height: 25,
    decoration: BoxDecoration(
      color: Colors.blueAccent,
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white)
    ),
    child: Center(
      child: Icon(Icons.thumb_up, size: 12, color: Colors.white,),
    ),
  );
}

Widget makeLove() {
  return Container(
    width: 25,
    height: 25,
    decoration: BoxDecoration(
      color: Colors.redAccent,
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white)
    ),
    child: Center(
      child: Icon(Icons.favorite, size: 12, color: Colors.white,),
    ),
  );
}

Widget makeLikeButton({required bool isActive}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.thumb_up, color: isActive ? Colors.blueAccent : Colors.grey, size: 18,),
          SizedBox(width: 5,),
          Text("Like", style: TextStyle(color: isActive? Colors.blueAccent : Colors.grey),)
        ],
      ),
    ),
  );
}

Widget makeCommentButton() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.chat, color: Colors.grey, size: 18,),
          SizedBox(width: 5,),
          Text("Comment", style: TextStyle(color: Colors.grey),)
        ],
      ),
    ),
  );
}

Widget makeShareButton() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.share, color: Colors.grey, size: 18,),
          SizedBox(width: 5,),
          Text("Share", style: TextStyle(color: Colors.grey),)
        ],
      ),
    ),
  );
}