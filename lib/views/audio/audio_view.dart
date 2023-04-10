import 'package:audioplayer/core/widgets/appbar_widget.dart';
import 'package:audioplayer/core/widgets/audio/audio_body_widget.dart';
import 'package:audioplayer/core/widgets/info_button_widget.dart';
import 'package:audioplayer/core/widgets/to_back_button_widget.dart';
import 'package:flutter/material.dart';

class AudioView extends StatelessWidget {
  const AudioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "AUDIO",
        leading: ToBackButtonWidget.toBack(context),
        actions: [
          IconButton(
            icon: const Icon(Icons.notification_add_outlined),
            onPressed: () {},
          ),
          InfoButtonWidget.info(context),
        ],
      ),
      body: AudioBodyWidget.body(context),
    );
  }
}
