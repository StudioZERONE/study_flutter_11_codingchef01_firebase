import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:study_flutter_11_codingchef01_firebase/Layout.dart';
import 'package:study_flutter_11_codingchef01_firebase/color_schemes.g.dart';
import 'firebase_options.dart';

void main() async {
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
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        //colorScheme: darkColorScheme,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        //colorScheme: darkColorScheme,
      ),
      themeMode: ThemeMode.system,
      home: const Layout(),
    );
  }
}
