import 'package:flutter/material.dart';
import 'package:flutter_wordpress_app/common/constants.dart';
import 'package:flutter_wordpress_app/pages/articles.dart';
import 'package:flutter_wordpress_app/pages/local_articles.dart';
import 'package:flutter_wordpress_app/pages/search.dart';
import 'package:flutter_wordpress_app/pages/settings.dart';
import 'package:flutter_wordpress_app/pages/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Icilome',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xFF385C7B),
        primaryColorLight: Colors.white,
        primaryColorDark: Colors.black,
        textTheme: TextTheme(
            displayLarge: TextStyle(
              fontSize: 17,
              color: Colors.black,
              height: 1.2,
              fontWeight: FontWeight.w500,
              fontFamily: "Soleil",
            ),
            bodySmall: TextStyle(color: Colors.black45, fontSize: 10),
            bodyLarge: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.black87,
                fontWeight: FontWeight.normal)),
      ),
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    Articles(),
    LocalArticles(),
    Search(),
    Settings()
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.w500, fontFamily: "Soleil"),
          unselectedLabelStyle: TextStyle(fontFamily: "Soleil"),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.flare), label: PAGE2_CATEGORY_NAME),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            // BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More'),
          ],
          currentIndex: _selectedIndex,
          fixedColor: Theme.of(context).primaryColor,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
