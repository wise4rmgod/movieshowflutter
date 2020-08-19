import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movieshowflutter/api/API.dart';
import 'package:movieshowflutter/model/search/Show.dart';
import 'package:http/http.dart' as http;

Future<List<Show>> _fetchJobs() async {
  final APIUrl = APIS.search;
  final response = await http.get(APIUrl);
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((job) => new Show.fromJson(job)).toList();
  } else {
    throw Exception('Failed to load jobs from API');
  }
}

class Searchp extends StatefulWidget {
  @override
  _SearchpState createState() => _SearchpState();
}

class _SearchpState extends State<Searchp> {
  final myController = TextEditingController();

  // final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Show>>(
        future: _fetchJobs(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Show> data = snapshot.data;
            return Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: myController,
                    obscureText: true,
                    // controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Search Movie',
                    ),
                  ),
                  RaisedButton(
                      onPressed: () {
                        setState(() {
                          _fetchJobs();
                        });
                      },
                      child: Text("Search")),
                  Showlist(data),
                ],
              ),
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

ListView Showlist(List<Show> data) {
  return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final item = data[index];
        return ListTile(
          title: Text(item.name),
          leading: CachedNetworkImage(
            imageUrl: item.image.original,
            fadeOutDuration: const Duration(seconds: 1),
            fadeInDuration: const Duration(seconds: 3),
            fit: BoxFit.fill,
          ),
          subtitle: Text(item.summary),
        );
      });
}
