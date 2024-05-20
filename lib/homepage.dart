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
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Icon(
            Icons.account_circle,
            size: 35,
          ),
        ),
        backgroundColor: Colors.black,
        title: Center(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15, bottom: 7),
            width: 230,
            height: 45,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(44, 44, 44, 100),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'Hello Ryo\nReady to use lab',
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.notifications_rounded,
              size: 35,
            ),
          )
        ],
        toolbarHeight: 70,
      ),
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 10, top: 20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(44, 44, 44, 100),
                  borderRadius: BorderRadius.circular(12),
                ),
                width: 370, // Set the width of the container
                height: 80, // Set the height of the container
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.pie_chart,
                      size: 50,
                      color: Colors.white,
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'On going:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Laboratorium 5',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(22, 0, 0, 0)),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(44, 44, 44, 100),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 170, // Set the width of the container
                  height: 160, // Set the height of the container
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(44, 44, 44, 100),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: 186, // Set the width of the container
                      height: 73, // Set the height of the container
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(44, 44, 44, 100),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: 186, // Set the width of the container
                      height: 73, // Set the height of the container
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 10, top: 0),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(44, 44, 44, 100),
                  borderRadius: BorderRadius.circular(12),
                ),
                width: 370, // Set the width of the container
                height: 80, // Set the height of the container
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.account_box_rounded,
                      size: 50,
                      color: Colors.white,
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Teacher:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Sir Bagus',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 10, top: 0),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(44, 44, 44, 100),
                  borderRadius: BorderRadius.circular(12),
                ),
                width: 370, // Set the width of the container
                height: 280, // Set the height of the container
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
