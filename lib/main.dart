import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:light_x/screens/login_screen.dart';
import 'package:light_x/screens/registration_screen.dart';



final _auth = FirebaseAuth.instance;
String loggedUser = "";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( OnlineAttendance());
}

class OnlineAttendance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme : ThemeData(
        scaffoldBackgroundColor: Color(0xFF212325),
      ),
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id : (context) => LoginScreen(),
        RegistrationScreen.id : (context) => RegistrationScreen(),



      },
    );
  }
}
