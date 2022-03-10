import 'package:dartt_shop/firebase_options.dart';
import 'package:dartt_shop/models/user_manager.dart';
import 'package:dartt_shop/theme.dart';
import 'package:dartt_shop/views/login/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserManager(),
      child: MaterialApp(
        title: 'Dartt Shop',
        theme: theme(),
        home: const LoginScreen(),
      ),
    );
  }
}
