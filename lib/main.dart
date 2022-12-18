import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet/bottom_bar.dart';
import 'package:meet/firebase_options.dart';
import 'package:meet/locator_service.dart';
import 'package:meet/presentation/bloc/bloc/firebase_auth_bloc.dart';
import 'package:meet/presentation/screens/login_srceen.dart';
import 'package:meet/presentation/screens/registr_screen.dart';
import 'package:meet/presentation/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  await init();

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
    return MultiBlocProvider(
      providers: [
        BlocProvider<FirebaseAuthBloc>(
          create: (context) => sl.get<FirebaseAuthBloc>(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: ({
          '/': ((context) => SplashScreen()),
          '/login': ((context) => LoginScreen()),
          '/registration': ((context) => RegistrScreen()),
          '/welcome': ((context) => BottomBar()),
        }),
      ),
    );
  }
}
