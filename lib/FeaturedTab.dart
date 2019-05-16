import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:music_link/StarRow.dart';


class FeaturedTab extends StatefulWidget {
  FeaturedTab({this.title});

  final String title;

  

  @override
  _FeaturedTabState createState() => _FeaturedTabState();
}


class _FeaturedTabState extends State<FeaturedTab> {


  @override
  Widget build(BuildContext context) {

    return Container(
        color: Colors.black,
        child: new StreamBuilder<QuerySnapshot>(
        stream:
            Firestore.instance.collection('musicians').orderBy('rating', descending: true).snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) return new Text('Error: ${snapshot.error}');
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return new Text('Loading...');
            default:
              return new Column(
                children: <Widget>[
                  Container(
                    margin: new EdgeInsets.only(top:40),
                    child:  Text('Featured', style: TextStyle(color: Colors.white, fontSize: 40)),
                  ),
                 
                  Container(
                
                width: MediaQuery.of(context).size.width,
                child: Stack(

                  children: [
                  new ListView(
                    padding: EdgeInsets.all(16.0),
                    shrinkWrap: true,
                    children: snapshot.data.documents
                        .map((DocumentSnapshot document) {
                      return new Center(
                          child: Card(
                            color: Colors.black,
                            
                              child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Semantics(
                            container: true,
                            label: document['name'],
                            value: 'Instrument is '+ document['instrument']+ 'and rating is '+ document['rating'].toString() + 'out of four stars',
                            child: Container(
                            decoration: new BoxDecoration(
                              border: new Border.all(color: Colors.yellowAccent)
                            ),
                            child: ListTile(
                            title: new Text(document['name'], style: TextStyle(color: Colors.yellow)),
                            trailing: new StarRow(starAmount: document['rating']),
                            subtitle: new Text(document['instrument'], style: TextStyle(color: Colors.yellow)),
                            onTap: (){
                              
                            }
                            ),
                          )
                          )
                          
                        ],
                      )));
                    }).toList(),
                  ),
                ]),
              )
                ],
              );
        
              

          }
        })
      );
  }


}