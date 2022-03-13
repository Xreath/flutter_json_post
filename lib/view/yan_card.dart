import 'package:flutter/material.dart';

import '../model/user.dart';

class Details extends StatelessWidget {
  final User model;
  const Details({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.title),
      ),
      body: Text(model.storyText),
    );
  }
}
