import 'package:flutter/material.dart';
import 'package:version1/model/postModel.dart';

class PostCard extends StatefulWidget {
  const PostCard({Key? key, required this.model}) : super(key: key);
  final postModel? model;

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: isClicked ? Colors.red : Colors.white,
      child: ListTile(
        onTap: () {
          setState(() {
            isClicked = !isClicked;
          });
        },
        leading: CircleAvatar(
          child: Text(widget.model?.id.toString() ?? ""),
        ),
        title: Text(widget.model?.title ?? ""),
      ),
    );
  }
}
