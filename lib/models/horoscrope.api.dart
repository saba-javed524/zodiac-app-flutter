import 'dart:convert';
import 'package:Horoscope/models/horoscope.dart';
import 'package:http/http.dart' as http;

class HoroscopeAPI {
  HoroscopeAPI({required this.zodiacStar});

  String zodiacStar = 'libra';

  static const Map<String, String> _headers = {
    "X-RapidAPI-Key": "c23fb1c9damsh75d60c26cd6091bp16e694jsnccfc2abffc8e",
    "X-RapidAPI-Host": "sameer-kumar-aztro-v1.p.rapidapi.com",
    "useQueryString": "true"
  };

  // Base API request to get response
  Future<Horoscope> get() async {
    const authority = "sameer-kumar-aztro-v1.p.rapidapi.com";
    const path = "/";
    final query = {"sign": "$zodiacStar", "day": "today"};
    var star = query["sign"].toString();

    Uri uri = Uri.https(authority, path, query);
    final response = await http.post(uri, headers: _headers);
    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      final jsonMap = json.decode(response.body);
      return Horoscope.fromJson(jsonMap);
    } else {
      // If that response was not OK, throw an error.
      throw Exception(
          'API call returned: ${response.statusCode} ${response.reasonPhrase}');
    }
  }
}
