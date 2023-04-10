import 'package:audioplayer/core/widgets/appbar_widget.dart';
import 'package:audioplayer/core/widgets/info/info_body_widget.dart';
import 'package:audioplayer/core/widgets/to_back_button_widget.dart';
import 'package:flutter/material.dart';

class InfoView extends StatelessWidget {
  const InfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "About",
        leading: ToBackButtonWidget.toBack(context),
      ),
      body: InfoBodyWidget.body(context),
    );
  }
}
