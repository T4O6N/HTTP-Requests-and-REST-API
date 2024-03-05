import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void getData() async {
    final url = Uri.parse("https://my-rest-api-y245.onrender.com/api/users/65e550ef96135d44699d704c");
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print('failed');
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    getData();
    return MaterialApp(
      title: 'Rest API Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(backgroundColor: Colors.blue),
        scaffoldBackgroundColor:
            Colors.grey, // Setting background color to grey
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rest API Test'), // AppBar title
      ),
      body: Center(
        child: Text(
          'This is your home page content.',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
