import 'package:flutter/material.dart';
import 'package:meet/firebase_options.dart';
import 'package:meet/presentation/screens/login_srceen.dart';
import 'package:meet/presentation/screens/registr_screen.dart';
import 'package:meet/presentation/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: ({
        '/': ((context) => SplashScreen()),
        '/login': ((context) => LoginScreen()),
        '/registration': ((context) => RegistrScreen()),
      }),
    );
  }
}
