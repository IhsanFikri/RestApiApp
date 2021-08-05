import 'package:bismillah1/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TestApi(),
    );
  }
}

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(8),
        children: [
          GridTile(
            child: Image.network(
              'https://images.pexels.com/photos/3557818/pexels-photo-3557818.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              fit: BoxFit.cover,
            ),
            footer: Material(
              color: Colors.transparent,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(4)),
              ),
              clipBehavior: Clip.antiAlias,
              child: GridTileBar(
                backgroundColor: Colors.black45,
                title: Text('TITLE'),
                subtitle: Text('Subtitle'),
              ),
            ),
          ),
          GridTile(
            header: Material(
              color: Colors.transparent,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(4)),
              ),
              clipBehavior: Clip.antiAlias,
              child: GridTileBar(
                title: Text('TITLE 2'),
                subtitle: Text('Subtitle'),
                backgroundColor: Colors.black54,
              ),
            ),
            child: Image.network(
              'https://images.pexels.com/photos/3557818/pexels-photo-3557818.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              fit: BoxFit.cover,
            ),
          ),
          GridTile(
            child: Image.network(
                'https://images.pexels.com/photos/3557818/pexels-photo-3557818.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          ),
        ],
      ),
    );
  }
}

class TestApi extends StatefulWidget {
  const TestApi({Key? key}) : super(key: key);

  @override
  _TestApiState createState() => _TestApiState();
}

class _TestApiState extends State<TestApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
