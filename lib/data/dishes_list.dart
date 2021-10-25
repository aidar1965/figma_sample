import 'dart:convert';
import 'package:figma_sample/assets/models/dish.dart';

class DishList {
  DishList();

  String values = '''
[{
  "title" : "С чесночным соусом",
  "description" : "Курица на углях, капуста белокочанная, помидоры, огурцы",
  "url" : "lib/assets/images/page_1/item_1.png",
  "price" : 690
},
{
  "title" : "С красным соусом",
  "description" : "Курица на углях, капуста белокочанная, помидоры, огурцы",
  "url" : "lib/assets/images/page_1/item_2.png",
  "price" : 850
},
{
  "title" : "С фирмерным соусом",
  "description" : "Курица на углях, капуста белокочанная,  помидоры, огурцы",
  "url" : "lib/assets/images/page_1/item_3.png",
  "price" : 870
},
{
  "title" : "Сырная",
  "description" : "Курица на углях, капуста пекинская, помидоры, сыр плавленный, сыр креметто",
  "url" : "lib/assets/images/page_1/item_4.png",
  "price" : 570
}

]
''';

  List<Dish> get dishes {
    Iterable l = json.decode(values);
    List<Dish> list = List<Dish>.from(l.map((model) => Dish.fromJson(model)));
    return list;
  }
}
