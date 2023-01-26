import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/all_artists.controller.dart';

class AllArtistsScreen extends GetView<AllArtistsController> {
  const AllArtistsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AllArtistsScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AllArtistsScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
