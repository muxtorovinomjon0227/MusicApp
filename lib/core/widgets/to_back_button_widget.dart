import 'package:flutter/material.dart';

class ToBackButtonWidget {
  static IconButton toBack(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.chevron_left_rounded),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
