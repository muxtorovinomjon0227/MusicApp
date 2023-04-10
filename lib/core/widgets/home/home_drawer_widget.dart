import 'package:audioplayer/core/components/text_style_comp.dart';
import 'package:audioplayer/core/constants/color_const.dart';
import 'package:audioplayer/core/extension/context_extensions.dart';
import 'package:audioplayer/core/widgets/info_button_widget.dart';
import 'package:flutter/material.dart';

class HomeDrawerWidget {
  static Drawer drawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              width: context.w,
              child: const Image(
                image: AssetImage("assets/images/j1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    buttons(
                      text: "Home",
                      icon: Icons.home,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    buttons(
                      text: "Audio",
                      icon: Icons.music_note,
                      onPressed: () {
                        Navigator.pushNamed(context, '/audio');
                      },
                    ),
                    buttons(
                      text: "Photo Gallery",
                      icon: Icons.photo,
                      onPressed: () {
                        Navigator.pushNamed(context, '/gallery');
                      },
                    ),
                  ],
                ),
                buttons(
                  text: "About",
                  icon: Icons.info_outline,
                  color: ColorConst.blue,
                  onPressed: () {
                    Navigator.pushNamed(context, '/info');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static InkWell buttons({
    required String text,
    required IconData icon,
    required onPressed,
    Color? color,
  }) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: color ?? ColorConst.kPrimaryBlack,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: MyTextStyleComp.myTextStyle(
                color: color ?? ColorConst.kPrimaryBlack,
              ),
            ),
          ],
        ),
      ),
      onTap: onPressed,
    );
  }
}
