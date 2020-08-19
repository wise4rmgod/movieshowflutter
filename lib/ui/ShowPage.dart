import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movieshowflutter/api/API.dart';
import 'package:http/http.dart' as http;
import 'package:movieshowflutter/model/show/ShowClass.dart';
import 'package:movieshowflutter/ui/MovieDetailsPage.dart';
import 'HomePage.dart';

Future<List<ShowClass>> fetchJobs() async {
  final APIUrl = APIS.show;
  final response = await http.get(APIUrl);
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((job) => new ShowClass.fromJson(job)).toList();
  } else {
    throw Exception('Failed to load jobs from API');
  }
}

class Show extends StatefulWidget {
  final List<ShowClass> movienxt;

  Show({
    Key key,
    @required this.movienxt,
  }) : super(key: key);

  @override
  _ShowState createState() => _ShowState();
}

class _ShowState extends State<Show> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<ShowClass>>(
        future: fetchJobs(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<ShowClass> data = snapshot.data;
            return Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "New Schedule Movies",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          decorationColor: Colors.amberAccent),
                    )),
                Expanded(flex: 1, child: Homep()),
                Container(
                    padding: EdgeInsets.all(10.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "New Movies Shows",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          decorationColor: Colors.amberAccent),
                    )),
                Expanded(flex: 2, child: Showlist(data)),
              ],
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

Container Showlist(List<ShowClass> data) {
  return Container(
    padding: EdgeInsets.all(10),
    child: GridView.builder(
        // scrollDirection: Axis.horizontal,
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 1.0, mainAxisSpacing: 4.0),
        itemBuilder: (context, index) {
          // ignore: missing_return
          final item = data[index];
          return Container(
//Image.network(item.image.original,fit: BoxFit.fill,)
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Movied(moviedata: item)),
                );
              },
              child: Card(
                elevation: 5,
                clipBehavior: Clip.antiAlias,
                child: CachedNetworkImage(
                  imageUrl: item.image.original,
                  fadeOutDuration: const Duration(seconds: 1),
                  fadeInDuration: const Duration(seconds: 3),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          );
        }),
  );
}

/** ListView Showlist(List<ShowClass> data) {
    return ListView.builder(
    itemCount: data.length,
    itemBuilder: (context, index) {
    final item = data[index];
    return Container(
    child: Row(
    children: <Widget>[
    Expanded(
    flex: 2,
    child: Image.network(item.image.original)),
    ],
    ),
    );
    //_tile(data[index].name, data[index].sex, Icons.work, item.image);
    });
    } **/

/**
 * ListTile(
    onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Homep()),
    );
    },
    title: Text(item.name,
    style: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20,
    )),
    subtitle: Text(item.network.name),
    leading: Icon(
    Icons.home,
    color: Colors.blue[500],
    ),
    trailing: Image.network(item.image.original),
    );
 */
