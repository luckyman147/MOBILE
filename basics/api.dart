import 'package:http/http.dart' as http;
import 'dart:convert';

void main(List<String> args) async {
  var data = await FetchAlbum();
  for (var i = 0; i < 100; i++) {
    print(data[i]['userId']);
    print(data[i]['id']);
    print(data[i]['title']);
    print('-----------');
  }
}

Future<dynamic> FetchAlbum() async {
  final url = 'https://jsonplaceholder.typicode.com/albums';
  final res = await http.get(Uri.parse(url));
  if (res.statusCode == 200) {
    return json.decode(res.body);
    // res.body;
  } else {
    throw Exception('Failed to load album');
  }
}
