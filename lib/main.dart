import 'package:flutter/material.dart';
import 'package:music_link/FeaturedTab.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 5,
        child: MyHomePage(title: 'Flutter Demo Home Page')
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: TabBarView(
            children: [
              new FeaturedTab(title: 'Featured Page' ),
              new Text('Under Construction'),
              new Text('Under Construction'),
              new Text('Under Construction'),
              new Text('Under Construction'),

            ],
          ),
          bottomNavigationBar: new TabBar(
            
            tabs: <Widget>[
            Tab(
              icon: new Icon(Icons.featured_play_list),
            ),
            Tab(
              icon: new Icon(Icons.search),
            ),
            Tab(
              icon: new Icon(Icons.add),
            ),
            Tab(icon: new Icon(Icons.people_outline),
            ),
            Tab(icon: new Icon(Icons.person_outline))
            ],
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.yellow,
          ),
    );
  }
}
