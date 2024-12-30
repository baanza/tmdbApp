import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myapp/api_confidg/discover.dart';
import 'package:myapp/models/discover_model.dart';

Future fetchMovies(String url) async {
  try {
    var response =
        await http.get(Uri.parse('$url'), headers: {
      'accept': 'application/json',
      'Authorization': 'Bearer ${Discover.readaccesstoken}'
    });
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      var toBeReturned = result['results'];
      //print(toBeReturned);
      return toBeReturned.map((json) => DiscoverModel.fromJson(json)).toList();
    } else {
      print(response.statusCode);
    }
  } on Exception {
    print('error occured while fetching files');
  }
}

// void main() async {
//   var movies = await fetchMovies();
// }
