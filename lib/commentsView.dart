import 'package:flutter/material.dart';

class CommentsView extends StatefulWidget {
  @override
  createState() => new CommentPageState();
}

class CommentPageState extends State<CommentsView> {
  List<String> _comment = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text("Comments")),
      body: Text("Comments page"),
    );
  }
}


//_commentButtonPressed() {
//  setState(() {
//    Navigator.push(
//        context, MaterialPageRoute(builder: (context) => CommentsView()));
//  });
//}