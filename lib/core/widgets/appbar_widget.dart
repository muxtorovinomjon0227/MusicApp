import 'package:audioplayer/core/components/text_style_comp.dart';
import 'package:audioplayer/core/constants/color_const.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;

  AppBarWidget({
    Key? key,
    required this.title,
    this.leading,
    this.actions,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size(double.infinity, 50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: leading,
      backgroundColor: ColorConst.kPrimaryWhite,
      iconTheme: IconThemeData(color: ColorConst.kPrimaryBlack, size: 30),
      title: Text(
        title,
        style: MyTextStyleComp.myTextStyle(
          color: ColorConst.kPrimaryBlack,
          fontSize: 20,
          weight: FontWeight.w600,
        ),
      ),
      actions: actions,
    );
  }
}
