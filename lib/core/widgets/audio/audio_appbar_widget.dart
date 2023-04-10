import 'package:audioplayer/core/components/text_style_comp.dart';
import 'package:audioplayer/core/constants/color_const.dart';
import 'package:flutter/material.dart';

class AudioAppBarWidget {
  static AppBar appbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: ColorConst.kPrimaryBlack, size: 30),
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.chevron_left_rounded),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        "AUDIO",
        style: MyTextStyleComp.myTextStyle(
          color: ColorConst.kPrimaryBlack,
          fontSize: 20,
          weight: FontWeight.w600,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notification_add_outlined),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.info_outline),
          onPressed: () {},
        ),
      ],
    );
  }
}
