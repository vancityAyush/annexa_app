import 'package:flutter/material.dart';

import '../Widget/reuseable_search_list.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff150c3f),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                    decoration: InputDecoration(
                  suffixIcon: InkWell(
                      onTap: () {
                        showSearch(context: context, delegate: CustomSearch());
                      },
                      splashColor: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(15),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                  labelText: 'Search your Stock',
                  labelStyle: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                  hintText: 'search',
                  hintStyle: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white60),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white60),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white60),
                  ),
                )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: SearchList(
              subtitle: 'NSE',
              title: 'ASIAN HOTEL(EAST)',
              icon: Icon(
                Icons.remove_red_eye,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: SearchList(
              subtitle: 'NSE',
              title: 'ASIAN HOTEL(EAST)',
              icon: Icon(
                Icons.remove_red_eye,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: SearchList(
              subtitle: 'NSE',
              title: 'ASIAN HOTEL(EAST)',
              icon: Icon(
                Icons.remove_red_eye,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: SearchList(
              subtitle: 'NSE',
              title: 'ASIAN HOTEL(EAST)',
              icon: Icon(
                Icons.remove_red_eye,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: SearchList(
              subtitle: 'NSE',
              title: 'ASIAN HOTEL(EAST)',
              icon: Icon(
                Icons.remove_red_eye,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: SearchList(
              subtitle: 'NSE',
              title: 'ASIAN HOTEL(EAST)',
              icon: Icon(
                Icons.remove_red_eye,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomSearch extends SearchDelegate {
  List<String> allData = [
    'Asian',
    'Russia',
    'India',
    'pakistan',
    'Russia',
    'china',
    'italy',
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQueary = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQueary.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQueary.length,
        itemBuilder: (context, index) {
          var result = matchQueary[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQueary = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQueary.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQueary.length,
        itemBuilder: (context, index) {
          var result = matchQueary[index];
          return Padding(
            padding: const EdgeInsets.all(6.0),
            child: SearchList(
              subtitle: 'NSE',
              title: 'ASIAN HOTEL(EAST)',
              icon: Icon(
                Icons.remove_red_eye,
                color: Colors.white,
              ),
            ),
          );
        });
  }
}
