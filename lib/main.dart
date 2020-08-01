import 'package:flutter/material.dart';

void main() {
  runApp(
    myApp()
  );
}
class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            elevation: 1.0,
            backgroundColor: Colors.indigo[500],
            title: Text("Go for the Head")
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/wallpapersden.com_thanos-smiling_1920x1080.jpg'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigo,
          child: Icon(Icons.add),
          onPressed: () {

          },
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile'),
                backgroundColor: Colors.indigo[500],
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
                backgroundColor: Colors.indigo[600],
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                title: Text('Post'),
                backgroundColor: Colors.indigo[700],
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                backgroundColor: Colors.indigo[800],
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                title: Text('Notifications'),
                backgroundColor: Colors.indigo[900],
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            }
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const<Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  image: DecorationImage(
                    image: AssetImage('images/wallpapersden.com_thanos-smiling_1920x1080.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  'Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text('Contact Us',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.feedback),
                title: Text('Feedback',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}