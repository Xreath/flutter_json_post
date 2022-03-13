import 'package:flutter/material.dart';

import '../core/components/enum/duration_enum.dart';
import '../core/components/image/image_manager.dart';
import '../core/components/image/image_opacity.dart';
import '../model/user.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isLoading = true;
  late final ImageManager imageManager;
  late final User user;
  @override
  void initState() {
    super.initState();
    waitForLoading();
    imageManager = ImageManager();
    user = User.fakeITem();
  }

  Future<void> waitForLoading() async {
    await Future.delayed(DurationEnum.NORMAL.time);
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Center(
            child: Container(
            child: CircularProgressIndicator(),
          ))
        : Container(
            decoration: BoxDecoration(color: Colors.black),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: ImageOpacitiy(
                    url: imageManager.randomImage,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: false,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Card(
                            child: ListtileWidget(index),
                          ),
                        );
                      }),
                ),
                Expanded(
                  flex: 1,
                  child: Dismissible(
                    key: UniqueKey(),
                    background: Container(
                      color: Colors.blueAccent,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          )),
                      width: double.infinity,
                    ),
                  ),
                ),
              ],
            ),
          );
  }

  ListTile ListtileWidget(int index) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(user.imageUrl)),
      trailing: Text(
        "GFG",
        style: TextStyle(color: Colors.green, fontSize: 15),
      ),
      title: Text(user.title),
      subtitle: Text(user.description),
      onTap: () {},
    );
  }
}
