import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mydemo1/pages/intermadiate/instagram/post_model.dart';
import 'package:mydemo1/pages/intermadiate/instagram/story_model.dart';

class FeedPageInsta extends StatefulWidget {
  const FeedPageInsta({super.key});

  @override
  State<FeedPageInsta> createState() => _FeedPageInstaState();
}

class _FeedPageInstaState extends State<FeedPageInsta> {

  List<Story> _stories = [
    Story("assets/images/giel.png", "Gril"),
    Story("assets/images/profile-picture.jpeg", "Cameraman"),
    Story("assets/images/insta.png", "Instagram"),
    Story("assets/images/giel.png", "Gril"),
    Story("assets/images/profile-picture.jpeg", "Cameraman"),
    Story("assets/images/insta.png", "Instagram"),
    Story("assets/images/giel.png", "Gril"),
    Story("assets/images/profile-picture.jpeg", "Cameraman"),
    Story("assets/images/insta.png", "Instagram"),
  ];

  List<Post> _posts = [
    Post(userImage: "assets/images/giel.png", userName: "Britany", postImage: "assets/images/profile-picture.jpeg", caption: "Justifyyyyyy"),
    Post(userImage: "assets/images/giel.png", userName: "InstaMlae", postImage: "assets/images/insta.png", caption: "Instagram"),
    Post(userImage: "assets/images/profile-picture.jpeg", userName: "Cameram", postImage: "assets/images/profile-picture.jpeg", caption: "heheh taking photo of you:)"),
    Post(userImage: "assets/images/giel.png", userName: "Britany", postImage: "assets/images/profile-picture.jpeg", caption: "yhe same"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(),
              //historis, watchall
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Stories", style: TextStyle(color: Colors.grey, fontSize: 14),),
                    Text("Watch All", style: TextStyle(fontSize: 14),)
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(
                  vertical: 10
                ),
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: _stories.map((story) {
                    return _itemOfStory(story);
                  }).toList(),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: _posts.length,
                    itemBuilder: (ctx, i) {
                    return _itemOfPost(_posts[i],context);
                    }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _itemOfStory(Story story) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          border: Border.all(
            width: 3,
            color: Color(0xFF8e44ad)
          )
        ),
        child: Container(
          padding: EdgeInsets.all(2),
          child: ClipRRect(borderRadius: BorderRadius.circular(70),
            child: Image(
              image: AssetImage(story.image),
              width: 70,
              height: 70,
              fit: BoxFit.cover,
          ),
          ),
        ),
      ),
      SizedBox(height: 10,),
      Text(story.name)
    ],
  );
}

Widget _itemOfPost(Post post, BuildContext context) {
  return Container(
    color: Colors.white,
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image(
                      image: AssetImage(post.userImage),
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(post.userName)
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
            ],
          ),
        ),
        FadeInImage(placeholder: AssetImage("assets/images/R.png"), image: AssetImage(post.postImage), width: MediaQuery.of(context ).size.width,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                IconButton(onPressed: () {}, icon: Icon(Icons.send))
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.save))
          ],
        ),
        //tags
        Container(
          width: MediaQuery.of(context as BuildContext).size.width,
          margin: EdgeInsets.symmetric(horizontal: 14),
          child: RichText(
            softWrap: true,
            overflow: TextOverflow.visible,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Sigma",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
                TextSpan( text: "Gigachad", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan( text: "learning", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan( text: "first", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan( text: "hehe", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan( text: "some", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan( text: "ABS", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan( text: "OMG", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
              ]
            ),
          ),
        ),
        //caption
        Container(
          width: MediaQuery.of(context as BuildContext).size.width,
          margin: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
          child: RichText(
            softWrap: true,
            overflow: TextOverflow.visible,
            text: TextSpan(
              children: [
                TextSpan(
                  text: post.userName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
                TextSpan(
                  text: "${post.caption}",
                  style: TextStyle(color: Colors.black)
                )
              ]
            ),
          ),
        ),

        // post date
        Container(
          margin: EdgeInsets.symmetric(horizontal: 14),
          alignment: Alignment.topLeft,
          child: Text(
            "February 2024",
            textAlign:  TextAlign.start,
            style: TextStyle(color: Colors.grey),
          ),
        )
      ],
    ),
  );
}