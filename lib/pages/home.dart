import 'package:flutter/material.dart';
import '../pages/feed.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePagestate();
  }
}

class _HomePagestate extends State<HomePage> {
  // Controller ==> programmatically set the current displayed page
  PageController _pageController;

  // Indicating the current displayed page ==> 0: Map, 1: Feed, 2: User
  int _page = 0;

  //create a Pagecontroller inside the .initState()
  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  //disposing when the State gets disposed
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  void navigationTapped(int page) {
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: new PageView(
        children: [
          new Container(
            // Map
            color: Colors.red,
          ),
          new Container(
            // Feed
            // calling the feed method!!!!!!!
            //child: Feed(),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Feed(),
                )
              ],
            ),
          ),
          new Container(
            // User
            color: Colors.grey,
          )
        ],
        // specifying the page controller
        controller: _pageController,
        onPageChanged: onPageChanged,
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera),
        onPressed: () {
          Navigator.pushNamed(context, '/upload');
        },
      ),

      //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

      bottomNavigationBar: new BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: new Icon(Icons.location_on),
            title: new Text("Map"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.list),
            title: new Text("Feed"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.people),
            title: new Text("User"),
          ),
        ],

        //Scroll to next page
        //_pageCOntroller
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );
    ;
  }
}
