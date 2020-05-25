import 'package:flutter/material.dart';

class BreedSearch extends SearchDelegate {
  

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: (){ 
          query=""; 
          showSuggestions(context);
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: (){ 
          close(context, null);
        },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Text(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    List<String> _history=["utku","ali","veli"];
    //List<String> city_names=["utku","ali","veli"];

    final suggestions = query.isEmpty
        ? _history
        : _history.where((c) => c.toLowerCase().contains(query)).toList();
 
    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (BuildContext context, int index) {
          return new ListTile(
            title: Text(suggestions[index]),
            onTap: () {
//              showResults(context);
              print(suggestions[index]);
              close(context, suggestions[index]);
            },
          );
        });
  }
}