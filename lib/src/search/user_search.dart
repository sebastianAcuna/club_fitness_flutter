import 'package:flutter/material.dart';


class UserSearch extends SearchDelegate{
  @override
  List<Widget> buildActions(BuildContext context) {
      // TODO: implement buildActions
      return <Widget>[
        IconButton(
          icon: Icon(Icons.close),
          onPressed: (){
              query = "";
          },
        )
      ];
    }
  
    @override
    Widget buildLeading(BuildContext context) {
      // TODO: implement buildLeading
      throw UnimplementedError();
    }
  
    @override
    Widget buildResults(BuildContext context) {
      // TODO: implement buildResults
      throw UnimplementedError();
    }
  
    @override
    Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }


}