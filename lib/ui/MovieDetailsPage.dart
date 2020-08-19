import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movieshowflutter/model/show/ShowClass.dart';
import 'package:movieshowflutter/ui/ShowPage.dart';

class Movied extends StatelessWidget {
  final ShowClass moviedata;

  Movied({Key key, this.moviedata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie Details"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              //  width: MediaQuery.of(context).size.width,
              child: CachedNetworkImage(
                imageUrl: moviedata.image.original,
                fadeOutDuration: const Duration(seconds: 1),
                fadeInDuration: const Duration(seconds: 3),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              child: Text("Summary", style: TextStyle(fontSize: 25, decorationStyle: TextDecorationStyle.solid)),
            ),
            Divider(),
            Container(
              child: Text(moviedata.summary),
            ),
          ],
        ),
      ),
    );
  }
}
