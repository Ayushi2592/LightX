import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:light_x/screens/active_complaints.dart';
import 'package:light_x/screens/home_screen.dart';
import 'package:light_x/screens/login_screen.dart';
import 'package:light_x/screens/registration_screen.dart';
import 'package:light_x/screens/splash_screen.dart';



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
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id : (context) => SplashScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        RegistrationScreen.id : (context) => RegistrationScreen(),
        HomeScreen.id : (context) => HomeScreen(),
        ActiveComplaintScreen.id : (context) => ActiveComplaintScreen(),



      },
    );
  }
}
