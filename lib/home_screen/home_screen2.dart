import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  _HomeScreen2State createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  late List animes;
  void getData() async {
    var response =
        await Dio().get("https://api.jikan.moe/v3/top/anime/1/airing");
    setState(() {
      animes = response.data;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(animes);
    return Scaffold();
  }
}
