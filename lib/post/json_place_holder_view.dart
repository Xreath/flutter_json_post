import 'package:flutter/material.dart';
import '../core/components/card/post_cart.dart';
import 'json_place_holder_view-model.dart';

class PostJsonPlaceHolderView extends PostJsonPlaceHolderViewModel {
  final String title = "Json Place Holder";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: isloading
          ? Center(child: LinearProgressIndicator())
          : buildListView(),
    );
  }

  ListView buildListView() {
    return ListView.builder(
        itemCount: postItems?.length ?? 0,
        itemBuilder: (context, index) => PostCard(
              model: postItems?[index],
            ));
  }

  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: Colors.blueAccent,
      title: Center(
        child: Text(
          title,
          textAlign: TextAlign.end,
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
