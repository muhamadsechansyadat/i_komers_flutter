import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

void showImageModal(
    BuildContext context, List<String> images, String imageUrl) {
  final initialIndex = images.indexOf(imageUrl);

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(CupertinoIcons.xmark_circle_fill,
                      color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Expanded(
                child: PhotoViewGallery(
                  pageController: PageController(initialPage: initialIndex),
                  scrollPhysics: BouncingScrollPhysics(),
                  backgroundDecoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  pageOptions: images.map((String url) {
                    return PhotoViewGalleryPageOptions(
                      imageProvider: AssetImage(url),
                      minScale: PhotoViewComputedScale.contained,
                      maxScale: PhotoViewComputedScale.covered * 2,
                    );
                  }).toList(),
                  onPageChanged: (index) {},
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
