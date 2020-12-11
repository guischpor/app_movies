import 'package:app_movies/styles/styles.dart';
import 'package:app_movies/widgets/search_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final styles = Styles();

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
      body: ListView(
        padding: EdgeInsets.all(16),
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
        ],
      ),
    );
  }
}
