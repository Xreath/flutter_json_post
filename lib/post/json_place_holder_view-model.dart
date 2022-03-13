import 'package:flutter/material.dart';

import '../model/postModel.dart';
import 'json_placeholder.dart';
import 'service/palce_holder_service_service.dart';

abstract class PostJsonPlaceHolderViewModel extends State<PostJsonPlaceHolder> {
  bool isloading = true;
  final PlaceHolderService placeHolderService = PlaceHolderService();
  List<postModel>? postItems;

  @override
  void initState() {
    super.initState();
    fetchAllDatas();
  }

  Future<void> fetchAllDatas() async {
    try {
      final response = await placeHolderService.fetchPostIem();
      postItems = response;
    } catch (e) {}

    _changeLoading();
  }

  void _changeLoading() {
    setState(() {
      isloading = !isloading;
    });
  }
}
