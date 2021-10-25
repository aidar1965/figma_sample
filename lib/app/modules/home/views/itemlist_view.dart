import 'package:figma_sample/app/modules/home/views/dishesgrid_view.dart';
import 'package:figma_sample/assets/models/dish.dart';
import 'package:figma_sample/data/dishes_list.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ItemlistView extends GetView {
  final List<Dish> dishes = DishList().dishes;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(shrinkWrap: true, children: [
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: Color(0xfff8f8f8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 32, bottom: 24),
                  child: Text(
                    'Классика',
                    style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4, right: 4, bottom: 24),
                  child: DishesgridView(dishes),
                ),
              ],
            )),
      ]),
    );
  }
}
