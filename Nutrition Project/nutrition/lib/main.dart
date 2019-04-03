import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';

class Organ {
  final String id, seq, name, spec, imageUrl;

  Organ({
    this.id,
    this.seq,
    this.name,
    this.spec,
    this.imageUrl,
  });

  factory Organ.fromJson(Map<String, dynamic> jsonData) {
    return Organ(
      id: jsonData['id'],
      seq: jsonData['seq'],
      name: jsonData['name'],
      spec: jsonData['spec'],
      imageUrl: "http://www.groupbean.com/images/"+jsonData['image_url'],
    );
  }
}

class OrganItem {
  final String id, seq, name, spec, imageUrl;

  OrganItem({
    this.id,
    this.seq,
    this.name,
    this.spec,
    this.imageUrl,
  });

  factory OrganItem.fromJson(Map<String, dynamic> jsonData) {
    return OrganItem(
      id: jsonData['id'],
      seq: jsonData['seq'],
      name: jsonData['name'],
      spec: jsonData['spec'],
      imageUrl: "http://www.groupbean.com/images/"+jsonData['image_url'],
    );
  }
}

class OrganListView extends StatelessWidget {
  final List<Organ> organs;

  OrganListView(this.organs);

  Widget build(context) {
    return ListView.builder(
      itemCount: organs.length,
      itemBuilder: (context, int currentIndex) {
        return createViewItem(organs[currentIndex], context);
      },
    );
  }

  Widget createViewItem(Organ organ, BuildContext context) {
    return new ListTile(
        title: new Card(
          elevation: 5.0,
          child: new Container(
            //decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Padding(
                  child: Image.network(organ.imageUrl),
                  padding: EdgeInsets.only(bottom: 8.0),
                ),
                Row(children: <Widget>[
                  Padding(
                      child: Text(
                        organ.name,
                        style: new TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                      padding: EdgeInsets.all(1.0)),
                  Text(" | "),
                  Padding(
                      child: Text(
                        organ.spec,
                        style: new TextStyle(fontStyle: FontStyle.italic),
                        textAlign: TextAlign.right,
                      ),
                      padding: EdgeInsets.all(1.0)),
                ]),
              ],
            ),
          ),
        ),
        onTap: () {
          //We start by creating a Page Route.
          //A MaterialPageRoute is a modal route that replaces the entire
          //screen with a platform-adaptive transition.
          var route = new MaterialPageRoute(
            builder: (BuildContext context) =>
            new SecondScreen(value: organ),
          );
          //A Navigator is a widget that manages a set of child widgets with
          //stack discipline.It allows us navigate pages.
          Navigator.of(context).push(route);
        });
  }
}

class OrganItemListView extends StatelessWidget {
  final List<OrganItem> organItems;

  OrganItemListView(this.organItems);

  Widget build(context) {
    return ListView.builder(
      itemCount: organItems.length,
      itemBuilder: (context, int currentIndex) {
        return createViewItem(organItems[currentIndex], context);
      },
    );
  }

  Widget createViewItem(OrganItem organItem, BuildContext context) {
    return new ListTile(
        title: new Card(
          elevation: 5.0,
          child: new Container(
            //decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Padding(
                  child: Image.network(organItem.imageUrl),
                  padding: EdgeInsets.only(bottom: 8.0),
                ),
                Row(children: <Widget>[
                  Padding(
                      child: Text(
                        organItem.name,
                        style: new TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                      padding: EdgeInsets.all(1.0)),
                  Text(" | "),
                  Padding(
                      child: Text(
                        organItem.spec,
                        style: new TextStyle(fontStyle: FontStyle.italic),
                        textAlign: TextAlign.right,
                      ),
                      padding: EdgeInsets.all(1.0)),
                ]),
              ],
            ),
          ),
        ),
        onTap: () {
          //We start by creating a Page Route.
          //A MaterialPageRoute is a modal route that replaces the entire
          //screen with a platform-adaptive transition.
          var route = new MaterialPageRoute(
            builder: (BuildContext context) =>
            new ThirdScreen(value: organItem),
          );
          //A Navigator is a widget that manages a set of child widgets with
          //stack discipline.It allows us navigate pages.
          Navigator.of(context).push(route);
        });
  }
}

//Future is n object representing a delayed computation.
Future<List<Organ>> downloadJSON() async {
  final jsonEndpoint =
      "http://www.groupbean.com/api/DiplayOrgans.php?LngTyp=1";

  final response = await get(jsonEndpoint);

  if (response.statusCode == 200) {
    List organs = json.decode(response.body);
    return organs
        .map((organ) => new Organ.fromJson(organ))
        .toList();
  } else
    throw Exception('We were not able to successfully download the json data.');
}

//Future is n object representing a delayed computation.
Future<List<OrganItem>> downloadItemJSON() async {
  final jsonEndpoint =
      "http://www.groupbean.com/api/DisplayOrgansItem.php?LngTyp=1";

  final response = await get(jsonEndpoint);

  if (response.statusCode == 200) {
    List organItems = json.decode(response.body);
    return organItems
        .map((organItem) => new OrganItem.fromJson(organItem))
        .toList();
  } else
    throw Exception('We were not able to successfully download the json data.');
}


class SecondScreen extends StatefulWidget {
  final Organ value;

  SecondScreen({Key key, this.value}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class ThirdScreen extends StatefulWidget {
  final OrganItem value;

  ThirdScreen({Key key, this.value}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}


class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Detail Page')),
      body: new Container(

          child: new FutureBuilder<List<OrganItem>>(
            future: downloadItemJSON(),
            //we pass a BuildContext and an AsyncSnapshot object which is an
            //Immutable representation of the most recent interaction with
            //an asynchronous computation.
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<OrganItem> organs = snapshot.data;
                return new OrganItemListView(organs);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              //return  a circular progress indicator.
              return new CircularProgressIndicator();
            },
          )



      ),
      
    );
  }
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Detail Page')),
      body: new Container(
        child: new Center(
          child: Column(
            children: <Widget>[
              Padding(
                child: new Text(
                  'SPACECRAFT DETAILS',
                  style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              Padding(
                //`widget` is the current configuration. A State object's configuration
                //is the corresponding StatefulWidget instance.
                child: Image.network("http://www.groupbean.com/images/"+ "${widget.value.imageUrl}"),
                padding: EdgeInsets.all(12.0),
              ),
              Padding(
                child: new Text(
                  'Name : ${widget.value.name}',
                  style: new TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                padding: EdgeInsets.all(20.0),
              ),
              Padding(
                child: new Text(
                  'Spec : ${widget.value.spec}',
                  style: new TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                padding: EdgeInsets.all(20.0),
              )
            ],   ),
        ),
      ),
    );
  }
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: new Scaffold(
        appBar: new AppBar(title: const Text('MySQL Images Text')),
        body: new Center(
          //FutureBuilder is a widget that builds itself based on the latest snapshot
          // of interaction with a Future.
          child: new FutureBuilder<List<Organ>>(
            future: downloadJSON(),
            //we pass a BuildContext and an AsyncSnapshot object which is an
            //Immutable representation of the most recent interaction with
            //an asynchronous computation.
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Organ> organs = snapshot.data;
                return new OrganListView(organs);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              //return  a circular progress indicator.
              return new CircularProgressIndicator();
            },
          ),

        ),
      ),
    );
  }
}


void main() {
  runApp(MyApp());
}
//end

