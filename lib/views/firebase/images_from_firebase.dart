import 'package:audioplayer/provider/firebase_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ImagePageFromFirebase extends StatefulWidget {
  const ImagePageFromFirebase({Key? key}) : super(key: key);

  @override
  State<ImagePageFromFirebase> createState() => _ImagePageFromFirebaseState();
}

class _ImagePageFromFirebaseState extends State<ImagePageFromFirebase> {
  @override
  void initState() {
    context.read<FirebaseProvider>().downloadURLExample();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

        ],
      ),
    );
  }
}
