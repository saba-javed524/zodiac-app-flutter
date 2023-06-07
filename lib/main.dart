import 'package:Horoscope/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyAPIPage(),
//     );
//   }
// }

// class MyAPIPage extends StatelessWidget {
//   MyAPIPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("API Page"),
//         centerTitle: true,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () => Navigator.pop(context),
//         ),
//       ),
//       body: _buildBody(),
//     );
//   }

//   Widget _buildBody() {
//     return FutureBuilder<MyData>(
//       future: APIService().get(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState != ConnectionState.done) {
//           return const Center(child: CircularProgressIndicator());
//         }
//         if (snapshot.hasError) {
//           return Center(child: Text(snapshot.error.toString()));
//         }
//         if (!snapshot.hasData) {
//           return const Center(child: Text("get() returns null!"));
//         }
//         final data = snapshot.data as MyData; // cast to MyData
//         return Container(
//           padding: const EdgeInsets.all(10),
//           child: Column(
//             children: [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text("Description"),
//                   Text(data.field1),
//                 ],
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text("Mood"),
//                   Text(data.field2),
//                 ],
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

// class APIService {
//   static const _authority = "sameer-kumar-aztro-v1.p.rapidapi.com";
//   static const _path = "/";
//   static const _query = {"sign": "pisces", "day": "today"};
//   var star = _query["sign"].toString();

//   static const Map<String, String> _headers = {
//     "X-RapidAPI-Key": "c23fb1c9damsh75d60c26cd6091bp16e694jsnccfc2abffc8e",
//     "X-RapidAPI-Host": "sameer-kumar-aztro-v1.p.rapidapi.com",
//     "useQueryString": "true"
//   };

//   // Base API request to get response
//   Future<MyData> get() async {
//     Uri uri = Uri.https(_authority, _path, _query);
//     final response = await http.post(uri, headers: _headers);
//     if (response.statusCode == 200) {
//       // If server returns an OK response, parse the JSON.
//       final jsonMap = json.decode(response.body);
//       return MyData.fromJson(jsonMap);
//     } else {
//       // If that response was not OK, throw an error.
//       throw Exception(
//           'API call returned: ${response.statusCode} ${response.reasonPhrase}');
//     }
//   }
// }

// class MyData {
//   final String field1;
//   final String field2;

//   const MyData({
//     this.field1 = '',
//     this.field2 = '',
//   });

//   factory MyData.fromJson(Map<String, dynamic> json) => _$MyDataFromJson(json);
// }

// MyData _$MyDataFromJson(Map<String, dynamic> json) => MyData(
//       field1: json['description'] as String? ?? '',
//       field2: json['mood'] as String? ?? '',
//     );
