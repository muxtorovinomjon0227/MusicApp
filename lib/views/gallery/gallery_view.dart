import 'package:audioplayer/core/mock/songs_data_mock.dart';
import 'package:audioplayer/core/widgets/appbar_widget.dart';
import 'package:audioplayer/core/widgets/gallery/gallery_img_widget.dart';
import 'package:audioplayer/core/widgets/info_button_widget.dart';
import 'package:audioplayer/core/widgets/to_back_button_widget.dart';
import 'package:flutter/material.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "GALLERY",
        leading: ToBackButtonWidget.toBack(context),
        actions: [
          InfoButtonWidget.info(context),
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: SongsDataMock.img.length,
        itemBuilder: (context, index) {
          return InkWell(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/${SongsDataMock.img[index]}",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GalleryImageWidget(
                    index: index,
                    imgPath: ["assets/images/${SongsDataMock.img[index]}"],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
