import 'dart:convert';
import 'package:app_movies/models/moviesModel.dart';
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

  final title = "";
  final page = "";
  List<MoviesModel> _movies;

  Future<List<MoviesModel>> _getMovies() async {
    try {
      List<MoviesModel> listMovies = List();
      final response = await http.get(
          "https://jsonmock.hackerrank.com/api/movies/search/?Title=$title");

      if (response.statusCode == 200) {
        var decodeJson = jsonDecode(response.body);
        decodeJson
            .forEach((item) => listMovies.add(MoviesModel.fromJson(item)));
        return listMovies;
      } else {
        print("Error loading movies list");
      }
    } catch (e) {
      print(e);
    }
  }

  //tentativa de conexão com api node js - não finalizado
  // Future<String> _getJSONData() async {
  //   var response = await http.get("http://localhost:8080/api/data/moviesDB");
  //   return json.decode(response.body);
  // }

  @override
  void initState() {
    super.initState();
    //inicializa a lista movies
    _getMovies().then((map) {
      _movies = map;
      print(_movies.length);
    });
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
            SizedBox(
              height: 20,
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
            ),
          ],
        ),
      ),
    );
  }
}
