import 'package:figma_sample/assets/models/adresses.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class IntroView extends GetView {
  @override
  Widget build(BuildContext context) {
    List<String> addresses = Adresses().adresses;
    return Padding(
      padding: const EdgeInsets.only(top: 36, bottom: 26),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Бро! Забери заказ на",
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontFamily: "Gilroy",
              fontWeight: FontWeight.w500,
            ),
            //  textAlign: TextAlign.left,
          ),
          DropdownButtonHideUnderline(
            child: DropdownButton(
              value: addresses.first,
              dropdownColor: Colors.black,
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: "Gilroy",
                  fontWeight: FontWeight.w600,
                  backgroundColor: Colors.black),
              items: addresses.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(value),
                  ),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          ),
        ],
      ),
    );
  }
}
