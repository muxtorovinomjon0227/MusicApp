import 'package:audioplayer/core/components/text_style_comp.dart';
import 'package:audioplayer/core/constants/color_const.dart';
import 'package:audioplayer/core/extension/context_extensions.dart';
import 'package:flutter/material.dart';

class InfoBodyWidget {
  static SizedBox body(BuildContext context) {
    return SizedBox(
      width: context.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: context.h * 0.02),
          Text(
            "VERSION 0.0.0 / 0.0.1",
            style: MyTextStyleComp.myTextStyle(
              color: ColorConst.kPrimaryBlack,
              fontSize: 12,
            ),
          ),
          SizedBox(height: context.h * 0.03),
          Text(
            "Jaloliddin",
            style: MyTextStyleComp.myTextStyle(
                color: ColorConst.kPrimaryBlack,
                fontSize: 35,
                weight: FontWeight.w700),
          ),
          Text(
            "Ahmadaliyev",
            style: MyTextStyleComp.myTextStyle(
                color: ColorConst.kPrimaryBlack,
                fontSize: 35,
                weight: FontWeight.w700),
          ),
          SizedBox(height: context.h * 0.03),
          Text(
            "by Khojimatov",
            style: MyTextStyleComp.myTextStyle(
              color: ColorConst.kPrimaryBlack,
              fontSize: 20,
              weight: FontWeight.w600,
            ),
          ),
          SizedBox(height: context.h * 0.1),
          ElevatedButton(
            child: const Text("DEVELOPER'S PAGE (AD)"),
            style: ElevatedButton.styleFrom(
              primary: ColorConst.kPrimaryBlack,
              side: BorderSide(color: ColorConst.kPrimaryWhite, width: 2),
              fixedSize: const Size(300, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
