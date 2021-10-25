import 'package:figma_sample/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
            unselectedItemColor: Color.fromRGBO(188, 188, 188, 0.3),
            selectedItemColor: Color.fromRGBO(188, 188, 188, 1),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_books,
                  color: Color.fromRGBO(234, 58, 56, 0.8),
                  size: 24,
                ),
                label: 'Меню',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Color.fromRGBO(136, 136, 136, 1),
                ),
                label: 'Корзина',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.info,
                  color: Color.fromRGBO(136, 136, 136, 1),
                ),
                label: 'Инфо',
              ),
            ]),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Бро! Забери заказ на",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: "Gilroy",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Хрущёва проспект, 2/8",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Gilroy",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 120,
                          width: 110,
                          child: null,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "lib/assets/images/page_1/top_1.png"),
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(width: 4, color: Colors.white),
                              borderRadius: BorderRadius.circular(24)),
                        ),
                        Container(
                          height: 120,
                          width: 110,
                          child: null,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "lib/assets/images/page_1/top_2.png"),
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(
                                  width: 3,
                                  color: Color.fromRGBO(255, 255, 255, 0.5)),
                              borderRadius: BorderRadius.circular(24)),
                        ),
                        Container(
                          height: 120,
                          width: 110,
                          child: null,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "lib/assets/images/page_1/top_2.png"),
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(
                                  width: 3,
                                  color: Color.fromRGBO(255, 255, 255, 0.5)),
                              borderRadius: BorderRadius.circular(24)),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "КЛАССИКА",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "КРАФТОВАЯ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "СЕЗОННАЯ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "САЛАТЫ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "НАПИТКИ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                        ],
                      ),
                    ),
                  ])),
          SizedBox(
            height: 24,
          ),
          Expanded(
            child: ListView(shrinkWrap: true, children: [
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Color(0xfff8f8f8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 40, left: 32, bottom: 24),
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
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: GridView.count(
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 8,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          crossAxisCount: 2,
                          childAspectRatio: 0.68,
                          children: List.generate(4, (index) {
                            return Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(32),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromARGB(92, 92, 92, 1),
                                        offset: Offset(0, 10),
                                        blurRadius: 32,
                                        spreadRadius: -20)
                                  ]),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32)),
                                elevation: 0,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Image.asset(
                                          'lib/assets/images/page_1/item_1.png'),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16, right: 16),
                                      child: Text('С чесночным соусом',
                                          style: TextStyle(
                                              fontFamily: 'Rubik',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16, right: 28, bottom: 17),
                                      child: Text(
                                        'Курица на углях, капуста белокочанная, помидоры, огурцы',
                                        maxLines: 3,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16.0, right: 16),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          RichText(
                                              text: TextSpan(
                                                  text: 'от ',
                                                  style: TextStyle(
                                                      fontFamily: 'Rubik',
                                                      fontSize: 10),
                                                  children: [
                                                TextSpan(
                                                    text: '69₽',
                                                    style: TextStyle(
                                                        fontFamily: 'Rubik',
                                                        fontSize: 16))
                                              ])),
                                          OutlinedButton(
                                              onPressed: () {},
                                              style: OutlinedButton.styleFrom(
                                                backgroundColor: Color.fromRGBO(
                                                    234, 58, 56, 1),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            17)),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10.88,
                                                    right: 10.26,
                                                    top: 9,
                                                    bottom: 9),
                                                child: Text(
                                                  'Выбрать',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                    ],
                  )),
            ]),
          ),
        ],
      ),
    );
  }
}
