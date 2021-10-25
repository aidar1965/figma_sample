import 'package:figma_sample/app/modules/home/views/itemcard_view.dart';
import 'package:figma_sample/app/modules/home/views/selectbutton_view.dart';
import 'package:figma_sample/assets/models/dish.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DishesgridView extends GetView {
  final List<Dish> dishes;
  DishesgridView(this.dishes);
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 16,
      crossAxisSpacing: 4,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 0.55,
      children: List.generate(dishes.length, (index) {
        return Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(92, 92, 92, 0.8),
                offset: Offset(0, 10),
                blurRadius: 32,
                spreadRadius: -20)
          ]),
          child: ItemcardView(dishes[index]),
        );
      }),
    );
  }
}
