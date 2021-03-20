import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'SearchDelegate.dart';

class ChooseLocationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChooseLocationWidgetState();
  }
}

class ChooseLocationWidgetState extends State<ChooseLocationWidget>
    with SingleTickerProviderStateMixin {
  // Change to Apple Maps

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        UiKitView(
          viewType: "MapView",
        ),
        // FIXME: IF BottomLower, onPressed on Map wird gecalled
        Positioned(
          right: 30,
          bottom: 70,
          child: FloatingActionButton.extended(
            onPressed: () => _openSearchDelegate(context),
            label: Text('SearchT'),
            icon: Icon(Icons.search),
          ),
        ),
      ],
    ));
  }

  _openSearchDelegate(BuildContext context) async {
    await showSearch(context: context, delegate: SearchDelegateTest());
  }
}
