import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.person_pin,
            size: 35,
          ),
          backgroundColor: Colors.black,
          title: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15),
            width: 200,
            height: 50,
            color: Color.fromRGBO(66, 66, 66, 100),
            child: Text(
              'Hello Ryo\nReady to use lab',
              style: TextStyle(fontSize: 17),
            ),
          ),
          toolbarHeight: 70,
          actions: const [
            Icon(
              Icons.notifications_rounded,
              size: 35,
            )
          ],
        ),
        body: Container(
          color: Colors.black,
          child: Text('ahahha'),
        ));
  }
}
