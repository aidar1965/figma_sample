import 'package:figma_sample/app/modules/home/views/bottomnavigation_view.dart';
import 'package:figma_sample/app/modules/home/views/itemlist_view.dart';
import 'package:figma_sample/app/modules/home/views/topoffers_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: SizedBox(height: 80, child: BottomnavigationView()),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [TopoffersView(), ItemlistView()],
      ),
    );
  }
}
