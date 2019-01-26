import 'package:flutter/material.dart';

class Upload extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _UploadState();
  }
}

class _UploadState extends State<Upload> {
  String _text;
  String _description;
  double _testnum;
  bool _makeItPrivate = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        appBar: AppBar(title: Text('Upload')),
        body: Container(
          margin: EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'New Memoreez?'),
                onChanged: (String value) {
                  setState(() {
                    _text = value;
                  });
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'just an another text'),
                maxLines: 4,
                onChanged: (String value) {
                  setState(() {
                    _description = value;
                  });
                },
              ),
              TextField(
                decoration:
                    InputDecoration(labelText: 'just playing with numbers'),
                keyboardType: TextInputType.number,
                onChanged: (String value) {
                  setState(() {
                    _testnum = double.parse(value);
                  });
                },
              ),
              SwitchListTile(
                value: _makeItPrivate,
                onChanged: (bool value) {
                  setState(() {
                    _makeItPrivate = value;
                  });
                },
                title: Text('make it private'),
              ),
              RaisedButton(
                child: Text('upload'),
                onPressed: () {
                  Navigator.pop(context, '/home');
                },
              )
            ],
          ),
        ));
  }
}
