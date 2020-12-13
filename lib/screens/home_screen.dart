import 'dart:convert';

import 'package:app_movies/styles/styles.dart';
import 'package:app_movies/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final styles = Styles();

  //tentativa de conexão node js - não finalizado
  // Future<String> _getJSONData() async {
  //   var response = await http.get("http://localhost:8080/api/data/moviesDB");
  //   return json.decode(response.body);
  // }

  @override
  void initState() {
    super.initState();
  }

  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: styles.backgroundColor,
        appBar: AppBar(
          backgroundColor: styles.appBarColor,
          centerTitle: true,
          title: Text(
            "Movie App",
            style: TextStyle(
              color: styles.appBarTextColor,
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              SearchField(
                hint: "Search",
                controller: _searchController,
                textInputType: TextInputType.text,
                onChanged: (value) => {},
                prefix: Icon(
                  Icons.search,
                  color: styles.iconColor,
                ),
              ),
              Expanded(
                flex: 1,
                child: ListView(
                  children: <Widget>[
                    Text(
                      "teste",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
