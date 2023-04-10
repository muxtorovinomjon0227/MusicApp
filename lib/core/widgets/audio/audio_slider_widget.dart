import 'dart:math';

import 'package:audioplayer/core/components/text_style_comp.dart';
import 'package:audioplayer/core/constants/color_const.dart';
import 'package:audioplayer/provider/audio_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AudioSliderWidget {
  static Column sliderBuild(
    BuildContext context, {
    required duration,
    required position,
    required bufferedPosition,
    onChanged,
    onChangeEnd,
  }) {
    Duration remaining = duration - position;
    context.read<AudioProvider>().timeOut(remaining);
    return Column(
      children: [
        SliderTheme(
          data: SliderThemeData(
            inactiveTrackColor: ColorConst.black38,
            thumbColor: ColorConst.kPrimaryBlack,
            activeTrackColor: ColorConst.kPrimaryBlack,
          ),
          child: Slider(
            min: 0.0,
            max: duration.inMilliseconds.toDouble(),
            value: min(
              context.read<AudioProvider>().dragValue ??
                  position.inMilliseconds.toDouble(),
              duration.inMilliseconds.toDouble(),
            ),
            onChanged: (value) {
              context.read<AudioProvider>().dragValueOnPressed(value);
              if (onChanged != null) {
                onChanged!(Duration(milliseconds: value.round()));
              }
            },
            onChangeEnd: (value) {
              if (onChangeEnd != null) {
                onChangeEnd!(Duration(milliseconds: value.round()));
              }
              context.read<AudioProvider>().dragValue = null;
            },
          ),
        ),
        Text(
          RegExp(r'((^0*[1-9]\d*:)?\d{2}:\d{2})\.\d+$')
                  .firstMatch(
                    "$remaining",
                  )
                  ?.group(1) ??
              '$remaining',
          style: MyTextStyleComp.myTextStyle(
            color: ColorConst.kPrimaryBlack,
            fontSize: 20,
            weight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
