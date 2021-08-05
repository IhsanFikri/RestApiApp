import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomeScreenAPI extends StatefulWidget {
  const HomeScreenAPI({Key? key}) : super(key: key);

  @override
  _HomeScreenAPIState createState() => _HomeScreenAPIState();
}

late Future<List> animeList;
late Future<List> resBody;

class _HomeScreenAPIState extends State<HomeScreenAPI> {
  Future<List> getAnime() async {
    Response<Map> res =
        await Dio().get("https://api.jikan.moe/v3/top/anime/1/airing");

    // resBody = res.data!['top'];
    // animeList = resBody;

    // print(resBody!.length);
    // print(animeList[1]['image_url']);
    return res.data!['top'];
  }

  @override
  void initState() {
    // TODO: implement initState
    animeList = getAnime();
    //print(resBody);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // print(animeList);
    print("hello");

    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Cok2'),
      ),
      body: FutureBuilder(
        future: animeList,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            // print(snapshot.data);
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(snapshot.data[index]['title']),
                    ),
                  ),
                );
              },
            );
          }
          return Text("kosong");
        },
      ),
    );
  }
}
