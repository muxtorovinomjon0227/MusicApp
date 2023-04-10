import 'package:audioplayer/core/components/text_style_comp.dart';
import 'package:audioplayer/core/constants/color_const.dart';
import 'package:audioplayer/core/extension/context_extensions.dart';
import 'package:audioplayer/core/mock/songs_data_mock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

class GalleryImageWidget extends StatelessWidget {
  const GalleryImageWidget({
    Key? key,
    required this.index,
    required this.imgPath,
  }) : super(key: key);

  final int index;
  final List<String> imgPath;
  final String text = '';
  final String subject = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kPrimaryBlack,
      body: Container(
        alignment: Alignment.topLeft,
        height: context.h,
        width: context.w,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/${SongsDataMock.img[index]}"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                heroTag: "1",
                backgroundColor: ColorConst.white24,
                child: Icon(
                  Icons.chevron_left_rounded,
                  color: ColorConst.kPrimaryWhite,
                  size: 35,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Text(
                SongsDataMock.img[index],
                style: MyTextStyleComp.myTextStyle(
                  color: ColorConst.kPrimaryWhite,
                  fontSize: 25,
                  weight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "2",
        backgroundColor: ColorConst.white24,
        child: Icon(
          Icons.share,
          color: ColorConst.kPrimaryWhite,
          size: 30,
        ),
        onPressed: () {
          share();
        },
      ),
    );
  }

  Future<void> share() async {
    await FlutterShare.share(
        title: 'Example share',
        text: 'Example share text',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Example Chooser Title');
  }
}
