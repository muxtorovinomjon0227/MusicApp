import 'package:audioplayer/core/constants/color_const.dart';
import 'package:audioplayer/core/widgets/appbar_widget.dart';
import 'package:audioplayer/core/widgets/home/home_body_widget.dart';
import 'package:audioplayer/core/widgets/home/home_drawer_widget.dart';
import 'package:audioplayer/core/widgets/info_button_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kPrimaryWhite,
      appBar: AppBarWidget(
        title: "HOME",
        actions: [InfoButtonWidget.info(context)],
      ),
      drawer: HomeDrawerWidget.drawer(context),
      body: HomeBodyWidget.body(context),
    );
  }
}
