import 'package:figma_sample/app/modules/home/views/selectbutton_view.dart';
import 'package:figma_sample/assets/models/dish.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ItemcardView extends GetView {
  final Dish dish;
  ItemcardView(this.dish);
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      elevation: 0,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Image.asset(dish.url),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
            child: Container(
              height: 32,
              child: Text(dish.title,
                  style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 18,
                      height: 0.9,
                      fontWeight: FontWeight.w500)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 28, bottom: 17),
            child: Text(
              dish.description,
              maxLines: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(
                        text: 'от ',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Rubik',
                            fontSize: 10),
                        children: [
                      TextSpan(
                          text: dish.price.toString() + '₽',
                          style: TextStyle(fontFamily: 'Rubik', fontSize: 16))
                    ])),
                SelectbuttonView(dish)
              ],
            ),
          )
        ],
      ),
    );
  }
}
