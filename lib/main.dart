import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:nexa_lab/homepage.dart';
import 'package:nexa_lab/peminjaman.dart';

void main() => runApp(MyApp());

enum ThemeStyle {
  Dribbble,
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Navigation Bar Example',
      theme: ThemeData(
        primarySwatch: const MaterialColor(0xFF6E45E3, {
          50: Color(0xFFE8E2F7),
          100: Color(0xFFCDB8E9),
          200: Color(0xFFB18DDA),
          300: Color(0xFF9552CB),
          400: Color(0xFF7A27BC),
          500: Color(0xFF6E45E3),
          600: Color(0xFF5A3AB0),
          700: Color(0xFF462F7D),
          800: Color(0xFF32254A),
          900: Color(0xFF1E1A17),
        }),
            ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  ThemeStyle _currentStyle = ThemeStyle.Dribbble;

  List<int> _badgeCounts = List<int>.generate(5, (index) => index);

  List<bool> _badgeShows = List<bool>.generate(5, (index) => true);

  List<Widget> index = [HomePage(), Peminjaman(), HomePage(), HomePage(), HomePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody for floating bar get better perfomance
      extendBody: true,
      backgroundColor: Colors.white,
      body: index[_currentIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    switch (_currentStyle) {
      case ThemeStyle.Dribbble:
        return _buildOriginDesign();
      default:
        return _buildOriginDesign();
    }
  }

  Widget _buildTitle() {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: Color(0xff040307),
      strokeColor: Color(0x30040307),
      unSelectedColor: Color(0xffacacac),
      backgroundColor: Colors.white,
      items: [
        CustomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          title: Text("Cart"),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.lightbulb_outline),
          title: Text("Explore"),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text("Search"),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          title: Text("Me"),
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }

  Widget _buildOriginDesign() {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: Colors.white,
      strokeColor: Colors.white,
      unSelectedColor: Color(0xff6c788a),
      backgroundColor: Color(0xff040307),
      items: [
        CustomNavigationBarItem(
          icon: Icon(Icons.home),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.door_sliding),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.account_circle),
        ),
        // CustomNavigationBarItem(
        //   icon: Icon(Icons.search),
        // ),
        // CustomNavigationBarItem(
        //   icon: Icon(Icons.account_circle),
        // ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }

}