import 'package:audioplayer/core/components/text_style_comp.dart';
import 'package:audioplayer/core/constants/color_const.dart';
import 'package:audioplayer/core/extension/context_extensions.dart';
import 'package:flutter/material.dart';

class HomeBodyWidget {
  static Column body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        container(
          context,
          img: "assets/images/j2.png",
          text: "Music",
          onTap: () {
            Navigator.pushNamed(context, '/audio');
          },
        ),
        container(
          context,
          img: "assets/images/j3.png",
          text: "Gallery",
          onTap: () {
            Navigator.pushNamed(context, '/gallery');
          },
        ),
        InkWell(
          child: Container(
            width: context.w,
            height: context.h * 0.265,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: ColorConst.kPrimaryBlack,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    star(),
                    star(),
                    star(),
                    star(),
                    star(icon: Icons.star_border),
                  ],
                ),
                Text(
                  "Rate Us",
                  style: MyTextStyleComp.myTextStyle(
                    color: ColorConst.kPrimaryWhite,
                    fontSize: 50,
                    weight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          onTap: () {},
        ),
      ],
    );
  }

  static InkWell container(
    BuildContext context, {
    String? img,
    String? text,
    onTap,
  }) {
    return InkWell(
      child: Container(
        alignment: Alignment.bottomCenter,
        width: context.w,
        height: context.h * 0.265,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
            image: AssetImage(img!),
            fit: BoxFit.cover,
          ),
        ),
        child: Text(
          text!,
          style: MyTextStyleComp.myTextStyle(
            color: ColorConst.kPrimaryWhite,
            fontSize: 50,
            weight: FontWeight.w700,
          ),
        ),
      ),
      onTap: onTap,
    );
  }

  static Icon star({IconData? icon}) {
    return Icon(
      icon ?? Icons.star,
      color: Colors.amber.shade400,
      size: 50,
    );
  }
}
