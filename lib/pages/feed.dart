import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  List<Map<String, String>> posts = [
    {'title': 'landscape', 'image': 'assets/landscape.jpg'},
    {'title': 'landscape', 'image': 'assets/landscape.jpg'},
    {'title': 'landscape', 'image': 'assets/landscape.jpg'},
    {'title': 'landscape', 'image': 'assets/landscape.jpg'},
    {'title': 'landscape', 'image': 'assets/landscape.jpg'}
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      padding: const EdgeInsets.all(10.0),
      itemBuilder: (context, index) {
        return Card(
          child: Column(
            children: <Widget>[
              Image.asset(posts[index]['image']),
              Text(posts[index]['title']),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text('Details'),
                    //onPressed: ,
                  )
                ],
              )
            ],
          ),
        );
      },
      itemCount: posts.length,
    );
  }
}
