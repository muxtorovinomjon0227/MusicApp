import 'package:audioplayer/provider/audio_provider.dart';
import 'package:audioplayer/router/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
bool shouldUseFirestoreEmulator = false;



void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // if (shouldUseFirestoreEmulator) {
  //   FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
  // }
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AudioProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<AudioProvider>().setAsset();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: MyRoutes.instance.onGenerateRoute,
      initialRoute: '/home',
    );
  }
}
