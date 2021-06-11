import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF1F1F1),
        body: MyBody(),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              IconButton(icon: Icon(Icons.home), onPressed: () {}),
              IconButton(icon: Icon(Icons.blur_circular), onPressed: () {}),
              Spacer(),
              IconButton(icon: Icon(Icons.email), onPressed: () {}),
              IconButton(icon: Icon(Icons.person), onPressed: () {}),
            ],
          ),
        ),
        floatingActionButton:
            FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
  bool isSwitched4 = false;
  bool isSwitched5 = false;
  bool isSwitched6 = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(

          bottom: TabBar(
            tabs: [
              Tab(
                child: Text('All', style: TextStyle(
                    color: Colors.black
                ),),
              ),
              Tab(
                child: Text('Home', style: TextStyle(
                    color: Colors.black
                ),),
              ),
              Tab(
                child: Text('Office', style: TextStyle(
                    color: Colors.black
                ),),
              ),
              Tab(icon: Icon(Icons.more_horiz, color: Colors.black,)),
            ],
          ),

          title: Text('My Home',
            style: TextStyle(
              color: Colors.black
            ),
          ),
          backgroundColor: Colors.white,

        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.alarm,
                                    size: 50.0,
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'ON',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Switch(
                              value: isSwitched1,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched1 = value;
                                  print(isSwitched1);
                                });
                              },
                              activeTrackColor: Colors.green,
                              activeColor: Colors.orangeAccent,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.light,
                                    size: 50.0,
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'OFF',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Switch(
                              value: isSwitched2,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched2 = value;
                                  print(isSwitched2);
                                });
                              },
                              activeTrackColor: Colors.green,
                              activeColor: Colors.orangeAccent,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.tv,
                                    size: 50.0,
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'OFF',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Switch(
                              value: isSwitched3,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched3 = value;
                                  print(isSwitched3);
                                });
                              },
                              activeTrackColor: Colors.green,
                              activeColor: Colors.orangeAccent,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.lock_open,
                                    size: 50.0,
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'OFF',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Switch(
                              value: isSwitched4,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched4 = value;
                                  print(isSwitched4);
                                });
                              },
                              activeTrackColor: Colors.green,
                              activeColor: Colors.orangeAccent,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.shower,
                                    size: 50.0,
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'OFF',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Switch(
                              value: isSwitched5,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched5 = value;
                                  print(isSwitched5);
                                });
                              },
                              activeTrackColor: Colors.green,
                              activeColor: Colors.orangeAccent,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.directions_car,
                                    size: 50.0,
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'OFF',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Switch(
                              value: isSwitched6,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched6 = value;
                                  print(isSwitched6);
                                });
                              },
                              activeTrackColor: Colors.green,
                              activeColor: Colors.orangeAccent,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ],
            ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.alarm,
                            size: 50.0,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'ON',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Switch(
                      value: isSwitched1,
                      onChanged: (value) {
                        setState(() {
                          isSwitched1 = value;
                          print(isSwitched1);
                        });
                      },
                      activeTrackColor: Colors.green,
                      activeColor: Colors.orangeAccent,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.light,
                            size: 50.0,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'OFF',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Switch(
                      value: isSwitched2,
                      onChanged: (value) {
                        setState(() {
                          isSwitched2 = value;
                          print(isSwitched2);
                        });
                      },
                      activeTrackColor: Colors.green,
                      activeColor: Colors.orangeAccent,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.lock_open,
                            size: 50.0,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'ON',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Switch(
                      value: isSwitched1,
                      onChanged: (value) {
                        setState(() {
                          isSwitched1 = value;
                          print(isSwitched1);
                        });
                      },
                      activeTrackColor: Colors.green,
                      activeColor: Colors.orangeAccent,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.directions_car,
                            size: 50.0,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'OFF',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Switch(
                      value: isSwitched2,
                      onChanged: (value) {
                        setState(() {
                          isSwitched2 = value;
                          print(isSwitched2);
                        });
                      },
                      activeTrackColor: Colors.green,
                      activeColor: Colors.orangeAccent,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}



