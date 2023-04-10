import 'package:audioplayer/core/components/text_style_comp.dart';
import 'package:audioplayer/core/constants/color_const.dart';
import 'package:audioplayer/core/extension/context_extensions.dart';
import 'package:audioplayer/core/mock/songs_data_mock.dart';
import 'package:audioplayer/provider/audio_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AudioAlbumsMenuWidget extends StatefulWidget {
  const AudioAlbumsMenuWidget({Key? key}) : super(key: key);

  @override
  State<AudioAlbumsMenuWidget> createState() => _AudioAlbumsMenuWidgetState();
}

class _AudioAlbumsMenuWidgetState extends State<AudioAlbumsMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorConst.kPrimaryWhite,
      contentPadding: const EdgeInsets.symmetric(vertical: 15),
      elevation: 0,
      content: SizedBox(
        height: context.h * 0.6,
        width: context.w,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.chevron_left_outlined,
                      color: ColorConst.kPrimaryBlack,
                      size: 35,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    "Albums List",
                    style: MyTextStyleComp.myTextStyle(
                      color: ColorConst.kPrimaryBlack,
                      fontSize: 25,
                      weight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: context.w * 0.12),
                ],
              ),
              SizedBox(
                height: context.h,
                child: ListView.builder(
                  itemCount: SongsDataMock.path.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: ColorConst.kPrimaryBlack,
                        child: Text(
                          "${index + 1}",
                          style: MyTextStyleComp.myTextStyle(
                            color: ColorConst.kPrimaryWhite,
                            fontSize: 15,
                            weight: FontWeight.w600,
                          ),
                        ),
                      ),
                      title: Text(
                        SongsDataMock.title[index],
                        style: MyTextStyleComp.myTextStyle(
                          color: ColorConst.kPrimaryBlack,
                          fontSize: 20,
                          weight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        "Jalloliddin Ahmadaliyev",
                        style: MyTextStyleComp.myTextStyle(
                          color: ColorConst.kPrimaryBlack,
                          fontSize: 15,
                          weight: FontWeight.w600,
                        ),
                      ),
                      onTap: () {
                        context.read<AudioProvider>().onTap(index);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
