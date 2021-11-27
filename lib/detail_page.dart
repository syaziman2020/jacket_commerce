import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jacket_commerce/checkout.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int? selector = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            image: AssetImage(
              "assets/product.png",
            ),
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Positioned(
            top: 480,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 6),
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: const Text(
                    "Senatta Malla",
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w600,
                      fontSize: 36,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: const Text(
                    "\$800",
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            sizeChoosen(sizer: "S", index: 0),
                            const SizedBox(
                              width: 16,
                            ),
                            sizeChoosen(sizer: "M", index: 1),
                            const SizedBox(
                              width: 16,
                            ),
                            sizeChoosen(sizer: "L", index: 2),
                            const SizedBox(
                              width: 16,
                            ),
                            sizeChoosen(sizer: "XL", index: 3)
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            shadowColor:
                                MaterialStateProperty.all(Color(0xffF56703)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9),
                              ),
                            ),
                            padding: MaterialStateProperty.all(
                              EdgeInsets.all(12),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xffF56703)),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return CheckOutPage();
                                },
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                width: 22,
                                image: AssetImage("assets/shop-bag.png"),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Add to Cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget sizeChoosen({String? sizer, int? index}) {
    return InkWell(
      onTap: () {
        setState(() {
          selector = index;
        });
      },
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: index == selector ? Color(0xffFFE8D8) : Colors.transparent,
          border: Border.all(
              color: index == selector ? Color(0xffF56703) : Colors.black,
              width: 1,
              style: BorderStyle.solid),
        ),
        child: Center(
          child: Text(
            sizer!,
            style: TextStyle(
              color: index == selector ? Color(0xffF56703) : Colors.black,
              fontFamily: "Nunito",
              fontWeight: FontWeight.w300,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
