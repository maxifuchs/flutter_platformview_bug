import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchDelegateTest extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [Center(child: Text("Test"),)];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(icon: Icon(CupertinoIcons.back),onPressed: () => close(context,"Test"),);
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Center(child: Text("Test"),);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Center(child: Text("Test"),);
  }


}