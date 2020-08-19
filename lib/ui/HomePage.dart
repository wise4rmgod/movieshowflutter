import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:movieshowflutter/api/API.dart';
import 'package:movieshowflutter/model/schedule/Show.dart';
import 'package:movieshowflutter/model/show/ShowClass.dart';

class Homep extends StatefulWidget {
  @override
  _HomepState createState() => _HomepState();
}

class _HomepState extends State<Homep> {
  Future<List<ShowClass>> _fetchJobs() async {
    final APIUrl = APIS.show;
    final response = await http.get(APIUrl);
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((job) => new ShowClass.fromJson(job)).toList();
    } else {
      throw Exception('Failed to load jobs from API');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<ShowClass>>(
        future: _fetchJobs(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<ShowClass> data = snapshot.data;
            return Showlist(data);
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
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];
          return Container(
            child: InkWell(
              onTap: () {},
              child: Card(
                elevation: 5,
                clipBehavior: Clip.antiAlias,
                child: Image.network(item.image.original),
              ),
            ),
          );
        }),
  );
}
