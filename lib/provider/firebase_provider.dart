import 'package:flutter/cupertino.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseProvider extends ChangeNotifier{

  Future<void> downloadURLExample() async {
   final downloadURL = await FirebaseStorage.instance.ref().child("Image.png").getDownloadURL();

  }


}