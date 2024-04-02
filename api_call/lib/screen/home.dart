import 'dart:convert';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //this state<HomeScren> its a private class //
  List<dynamic> users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("Rest API Call")),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            final name = user['name']['first'];
            final email = user['email'];
            final imageUrl = user['picture']['thumbnail'];
            return ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(imageUrl)),
              ),
              title: Text(email),
              subtitle: Text(name.toString()),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchusers,
      ),
    );
  }

  void fetchusers() async {
    print("fetch called");
    const url = 'https://randomuser.me/api/?results=100';
    final uri = Uri.parse(url);

    final response = await http.get(uri);
    // print(response);

    final body = response.body;
    // print(body);

    final json = jsonDecode(body);

    setState(() {
      users = json['results'];
    });

    print("fetch completed");
  }
}








