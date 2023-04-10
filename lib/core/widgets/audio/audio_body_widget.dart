import 'package:audioplayer/core/widgets/audio/audio_albums_menu_widget.dart';
import 'package:audioplayer/core/widgets/audio/audio_slider_widget.dart';
import 'package:audioplayer/core/components/position_data_comp.dart';
import 'package:audioplayer/core/components/text_style_comp.dart';
import 'package:audioplayer/core/constants/color_const.dart';
import 'package:audioplayer/core/mock/songs_data_mock.dart';
import 'package:audioplayer/provider/audio_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AudioBodyWidget {
  static final List<String> artistTitle = SongsDataMock.title;
  static Column body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.audiotrack_rounded,
          size: 200,
          color: ColorConst.black38,
        ),
        Column(
          children: [
            Text(
              artistTitle[context.watch<AudioProvider>().index],
              style: MyTextStyleComp.myTextStyle(
                color: ColorConst.kPrimaryBlack,
                fontSize: 35,
                weight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "Jaloliddin Ahmadaliyev",
              style: MyTextStyleComp.myTextStyle(
                color: ColorConst.kPrimaryBlack,
                fontSize: 20,
                weight: FontWeight.w600,
              ),
            ),
          ],
        ),
        StreamBuilder<PositionData>(
          stream: context.read<AudioProvider>().positionDataStream,
          builder: (context, snapshot) {
            final positionData = snapshot.data;
            return  AudioSliderWidget.sliderBuild(
              context,
              duration: positionData?.duration ?? Duration.zero,
              position: positionData?.position ?? Duration.zero,
              bufferedPosition: positionData?.bufferedPosition ?? Duration.zero,
              onChangeEnd: context.read<AudioProvider>().player.seek,
            );
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buttons(
              icon: context.watch<AudioProvider>().showReturn
                  ? Icons.repeat_one_rounded
                  : Icons.repeat,
              onTap: () {
                context.read<AudioProvider>().repeat();
              },
              size: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buttons(
                  icon: Icons.skip_previous_rounded,
                  onTap: context.read<AudioProvider>().previous,
                ),
                buttons(
                  icon: context.watch<AudioProvider>().showPlay
                      ? Icons.pause
                      : Icons.play_arrow,
                  onTap: context.read<AudioProvider>().playPause,
                  size: 60,
                ),
                buttons(
                  icon: Icons.skip_next_rounded,
                  onTap: context.read<AudioProvider>().next,
                ),
              ],
            ),
            buttons(
              icon: Icons.menu,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const AudioAlbumsMenuWidget();
                  },
                );
              },
              size: 40,
            ),
          ],
        ),
        const SizedBox(),
      ],
    );
  }

  static InkWell buttons({
    required IconData icon,
    required onTap,
    double? size,
  }) {
    return InkWell(
      child: Icon(icon, size: size ?? 50),
      onTap: onTap,
    );
  }
}
