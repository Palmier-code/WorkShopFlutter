import 'dart:convert';
import 'package:workshop/utils/albums.dart';
import 'package:http/http.dart' as http;

Future<Albums> getAlbums() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

  if (response.statusCode == 200) {
    return Albums.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}
