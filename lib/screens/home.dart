import 'package:flutter/material.dart';
import 'package:flutter_travel_concept/util/places.dart';
import 'package:flutter_travel_concept/widgets/horizontal_place_item.dart';
import 'package:flutter_travel_concept/widgets/vertical_place_item.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        title: Text(
          "Vampiros",
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'RobotoMono',
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              "¿Que Te Gustaría Ver?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: 'RobotoMono',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: searchBar(),
          ),
          buildHorizontalList(context),
          buildVerticalList(),
        ],
      ),
    );
  }

  buildHorizontalList(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0, left: 20.0),
      height: 250.0,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        primary: false,
        itemCount: places == null ? 0.0 : places.length,
        itemBuilder: (BuildContext context, int index) {
          Map place = places.reversed.toList()[index];
          return HorizontalPlaceItem(place: place);
        },
      ),
    );
  }

  buildVerticalList() {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: ListView.builder(
        primary: false,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: places == null ? 0 : places.length,
        itemBuilder: (BuildContext context, int index) {
          Map place = places[index];
          return VerticalPlaceItem(place: place);
        },
      ),
    );
  }
}

searchBar() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.blueGrey[50],
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),
    child: TextField(
      style: TextStyle(
        fontSize: 15.0,
        color: Colors.blueGrey[300],
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        hintText: "Ej: Nosferatus, Dracula...",
        prefixIcon: Icon(
          Icons.search,
          color: Colors.blueGrey[300],
        ),
        hintStyle: TextStyle(
          fontSize: 15.0,
          color: Colors.blueGrey[300],
        ),
      ),
      maxLines: 1,
    ),
  );
}
