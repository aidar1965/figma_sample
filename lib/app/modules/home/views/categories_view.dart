import 'package:figma_sample/assets/models/categiries.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CategoriesView extends GetView {
  final categories = Categories().categiries;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Container(
        height: 32,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    categories[index].toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
