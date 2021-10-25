import 'package:figma_sample/app/modules/home/views/actions_view.dart';
import 'package:figma_sample/app/modules/home/views/categories_view.dart';
import 'package:figma_sample/app/modules/home/views/intro_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopoffersView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IntroView(),
              ActionsView(),
              CategoriesView(),
            ]));
  }
}
