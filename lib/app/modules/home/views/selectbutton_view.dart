import 'package:figma_sample/assets/models/dish.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SelectbuttonView extends GetView {
  final Dish dish;
  SelectbuttonView(this.dish);
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {
          Get.snackbar('Show dish', dish.title, backgroundColor: Colors.white);
        },
        style: OutlinedButton.styleFrom(
          backgroundColor: Color.fromRGBO(234, 58, 56, 1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 9, bottom: 9),
          child: Text(
            'Выбрать',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ));
  }
}
