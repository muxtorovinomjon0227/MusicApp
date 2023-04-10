import 'package:audioplayer/views/audio/audio_view.dart';
import 'package:audioplayer/views/gallery/gallery_view.dart';
import 'package:audioplayer/views/home/home_view.dart';
import 'package:audioplayer/views/info/info_view.dart';
import 'package:flutter/material.dart';

class MyRoutes {
  static final MyRoutes _instace = MyRoutes.init();
  static MyRoutes get instance => _instace;
  MyRoutes.init();

  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;

    switch (s.name) {
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeView());
      case '/audio':
        return MaterialPageRoute(builder: (_) => const AudioView());
      case '/gallery':
        return MaterialPageRoute(builder: (_) => const GalleryView());
      case '/info':
        return MaterialPageRoute(builder: (_) => const InfoView());
    }
    return null;
  }
}
