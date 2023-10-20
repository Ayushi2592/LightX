import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'active_complaints.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'chat_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        title: Text('Home Screen'),
        backgroundColor: Color(0xFF176B87),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://thumbs.dreamstime.com/b/complaints-red-brush-abstract-background-illustration-complaints-isolated-red-brush-abstract-background-illustration-129662921.jpg',
              width: 200,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, ActiveComplaintScreen.id);
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF176B87), // Background color
                onPrimary: Colors.white, // Text color
                elevation: 5, // Shadow elevation
                padding: EdgeInsets.all(16), // Padding around the text
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
              ),
              ),
              child: Text('Active Complaints'),
            ),
            SizedBox(height: 20),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeB5dBrfeLQ2Zd1v6qj1Vipcb-0pCCgMoHDwN0Uf_SwoyXM14ksF-IhWyAcGoXI8Q8PkQ&usqp=CAU',
              width: 200,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF176B87), // Background color
                onPrimary: Colors.white, // Text color
                elevation: 5, // Shadow elevation
                padding: EdgeInsets.all(16), // Padding around the text
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),

              child: Text('Closed Complaints'),
            ),
          ],
        ),
      ),
    );
  }
}