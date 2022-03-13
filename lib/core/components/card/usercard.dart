import 'package:flutter/material.dart';

import '../../../model/user.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("heelo");
        },
        leading: CircleAvatar(
          backgroundImage: NetworkImage(user.imageUrl),
        ),
        title: Text("Data"),
        subtitle: Text(user.description),
        trailing: InkWell(
            onTap: () {
              print("Icon");
            },
            child: Icon(Icons.av_timer, size: 30.0)),
      ),
    );
  }
}
