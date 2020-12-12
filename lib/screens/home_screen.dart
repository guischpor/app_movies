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
  var data = "";

  Future<Map<String, dynamic>> _getJSONData(moveTitle) async {
    var response = await http.get(
        "https://jsonmock.hackerrank.com/api/movies/search/?Title=$moveTitle");

    return json.decode(response.body);
  }

  @override
  void initState() {
    super.initState();

    var teste = _getJSONData('Waterworld');
    print(teste);
    //debugPrint(getJSONData('Waterworld'));
  }

  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _getJSONData('Waterworld');
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
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}
