import 'package:audioplayer/provider/audio_provider.dart';
import 'package:audioplayer/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
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
