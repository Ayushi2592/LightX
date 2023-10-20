import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ActiveComplaintScreen extends StatefulWidget {
  static const String id = 'activecomplaint_screen';
  @override
  _ActiveComplaintScreenState createState() => _ActiveComplaintScreenState();
}

class _ActiveComplaintScreenState extends State<ActiveComplaintScreen> {
  final _auth = FirebaseAuth.instance;
  late User loggedInUser;
  late String messageText;
  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }

  void getCurrentUser() async {
    try{
      final user = await _auth.currentUser!;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Complaints'),
          backgroundColor: Color(0xFF176B87),
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center( // Center the text
                  child: Text(
                    'ACTIVE COMPLAINTS',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 35),
                Table(
                  border: TableBorder.all(color: Colors.white),
                  children: [
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(child: Text('StreetLightId',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          ),
                        ),
                        TableCell(
                          child: Center(child: Text('24345',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(child: Text('Complain Date',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          ),
                        ),
                        TableCell(
                          child: Center(child: Text('2023-02-20',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(child: Text('Location',
                            style:  TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          ),
                        ),
                        TableCell(
                          child: Center(child: Text('Street B',
                            style:  TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(child: Text('Fault Type',
                            style:  TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          ),
                        ),
                        TableCell(
                          child: Center(child: Text('Flickering Light',
                            style:  TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(child: Text('Fault Status',
                            style:  TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          ),
                        ),
                        TableCell(
                          child: Center(child: Text('Unresolved',
                            style:  TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ]
          ),
        )
    );
  }
}