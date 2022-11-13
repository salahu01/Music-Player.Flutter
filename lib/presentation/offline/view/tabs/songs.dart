import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_app/infrastructure/widgets/song_tile.dart';
import 'package:music_app/presentation/offline/controllers/offline.controller.dart';

class SongsTab extends GetView<OfflineController> {
  const SongsTab({required this.scrollController, Key? key}) : super(key: key);
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
              itemCount: 50,
              shrinkWrap: true,
              controller: scrollController,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) =>
                  SongTile(index: index, selectedIndex: 5))
          .paddingSymmetric(vertical: 8.r),
    );
  }
}
