import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movieshowflutter/api/API.dart';
import 'package:movieshowflutter/model/show/ShowClass.dart';
import 'package:movieshowflutter/ui/ShowPage.dart';
import 'package:http/http.dart' as http;

class MockClient extends Mock implements http.Client {}

main() {
  group('fetchPost', () {
    test('returns a Post if the http call completes successfully', () async {
      final client = MockClient();
      final APIUrl = APIS.show;
      // Use Mockito to return a successful response when it calls the
      // provided http.Client.
      when(client.get(APIUrl))
          .thenAnswer((_) async => http.Response('{"name": "Test"}', 200));

      expect(await fetchJobs(), isA<ShowClass>());
    });

    test('throws an exception if the http call completes with an error', () {
      final client = MockClient();

      // Use Mockito to return an unsuccessful response when it calls the
      // provided http.Client.
      when(client.get('http://api.tvmaze.com/shows'))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      expect(fetchJobs(), throwsException);
    });
  });
}
