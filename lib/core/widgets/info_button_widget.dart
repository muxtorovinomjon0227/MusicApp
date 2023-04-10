import 'package:flutter/material.dart';

class InfoButtonWidget {
  static IconButton info(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.info_outline),
      onPressed: () {
        Navigator.pushNamed(context, '/info');
      },
    );
  }
}
