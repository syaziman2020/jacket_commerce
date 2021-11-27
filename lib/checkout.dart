import 'package:flutter/material.dart';
import 'package:jacket_commerce/detail_page.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<CheckOutPage> {
  bool y = false;
  bool x = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 119,
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Holiday Yes",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w600,
                      fontSize: 24),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "883 items",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailPage();
                                },
                              ),
                            );
                          },
                          child: jacketSell(
                            img: "assets/people3.png",
                            model: "Senatta Malla",
                            price: "\$800",
                          ),
                        ),
                        jacketSell(
                          img: "assets/people1.png",
                          model: "Uncle Dunn",
                          price: "\$1200",
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        jacketSell(
                          img: "assets/people2.png",
                          model: "Grey Manni",
                          price: "\$900",
                        ),
                        jacketSell(
                          img: "assets/people3.png",
                          model: "Army Six",
                          price: "\$500",
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        jacketSell(
                          img: "assets/people1.png",
                          model: "Army Gun",
                          price: "\$1500",
                        ),
                        jacketSell(
                          img: "assets/people2.png",
                          model: "Miaw Aug",
                          price: "\$750",
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        jacketSell(
                          img: "assets/people2.png",
                          model: "Ripped Jean",
                          price: "\$9900",
                        ),
                        jacketSell(
                          img: "assets/people3.png",
                          model: "Tommy Hun",
                          price: "\$1800",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 280,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 26,
                        height: 26,
                        decoration: BoxDecoration(
                          color: Color(0xffE9E9E9),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                x = true;
                              });
                            },
                            onDoubleTap: () {
                              setState(() {
                                x = false;
                              });
                            },
                            child: Icon(
                              Icons.done,
                              color: x ? Colors.black : Colors.transparent,
                              size: 19,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Added to Shopping Cart",
                        style: TextStyle(
                          fontFamily: "Nunito",
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Color(0xffF56703),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(9),
                            bottomRight: Radius.circular(9),
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget jacketSell({
    String? img,
    String? model,
    String? price,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: 155,
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(17),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(17)),
                child: Image.asset(
                  img!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              left: 41,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(
                        () {
                          y = true;
                        },
                      );
                    },
                    onDoubleTap: () {
                      setState(() {
                        y = false;
                      });
                    },
                    child: Container(
                      width: 28,
                      height: 28,
                      child: Center(
                        child: Icon(
                          Icons.local_mall_outlined,
                          size: 14,
                          color: y ? Colors.white : Color(0xff242D3A),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: y ? Color(0xffF56703) : Colors.white,
                          shape: BoxShape.circle),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Container(
                      width: 28,
                      height: 28,
                      child: Center(
                        child: Icon(
                          Icons.thumb_up_outlined,
                          size: 14,
                          color: Color(0xff242D3A),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          model!,
          style: TextStyle(
            color: Color(0xff242D3A),
            fontFamily: "Nunito",
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          price!,
          style: TextStyle(
            color: Color(0xff242D3A),
            fontFamily: "Nunito",
            fontWeight: FontWeight.w300,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
