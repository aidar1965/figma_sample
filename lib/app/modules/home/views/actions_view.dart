import 'package:flutter/material.dart';
import 'package:figma_sample/assets/models/action.dart';
import 'package:get/get.dart';

class ActionsView extends GetView {
  final List<Map<String, dynamic>> actions = TopAction().actions;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: actions.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: GestureDetector(
                  onTap: () => Get.snackbar(
                      'Show action', 'ID: ' + actions[index]["id"].toString(),
                      backgroundColor: Colors.white),
                  child: Container(
                    height: 120,
                    width: 110,
                    child: null,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(actions[index]['url']),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                            width: actions[index]['id'] == 1 ? 4 : 3,
                            color: actions[index]['id'] == 1
                                ? Colors.white
                                : Color.fromRGBO(255, 255, 255, 0.5)),
                        borderRadius: BorderRadius.circular(24)),
                  ),
                ),
              );
            }));
  }
}
