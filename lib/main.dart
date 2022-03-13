import 'package:flutter/material.dart';
import 'package:version1/post/json_placeholder.dart';

import 'model/animetsmootbar.dart';
import 'view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.light,
          primaryColor: Colors.yellowAccent),
      home: PostJsonPlaceHolder(), //HomePageSmoot(),
      debugShowCheckedModeBanner: false,
    );
  }
}
