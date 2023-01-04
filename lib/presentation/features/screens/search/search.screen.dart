import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/search.controller.dart';

class SearchScreen extends GetView<SearchController> {
  const SearchScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SearchScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SearchScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
