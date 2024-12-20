import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodmoneky/util/Constant.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    var msize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Proudct Details"),
        backgroundColor: accent,
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            height: (msize.height / 3) * 2,
            margin: EdgeInsets.only(top: msize.height / 3),
            decoration: const BoxDecoration(
                color: secondary,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildRichText("Price\n", "\t\t\t3500 ks"),
                    _buildRichText("Size\n", "\t\tLarge Size"),
                    _buildRichText("Promo\n", "\t\t\tCoca Cola"),
                  ],
                ),
                const Text(
                  sampleparagraph,
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: primary, fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                          height: 35,
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(normal),
                              padding:
                                  WidgetStateProperty.all(EdgeInsets.zero),
                            ),
                            child: Icon(
                              Icons.add,
                              color: primary,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            "3".padLeft(2, "0"),
                            style: const TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                          height: 35,
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(normal),
                              padding:
                                  WidgetStateProperty.all(EdgeInsets.zero),
                            ),
                            child: Icon(
                              Icons.remove,
                              color: primary,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite_border,
                              color: normal,
                            ))),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                        width: 80,
                        height: 35,
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(normal)),
                          child: Icon(
                            Icons.shopping_cart,
                            color: primary,
                          ),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: SizedBox(
                          width: 80,
                          height: 35,
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(normal)),
                            child: Icon(
                              Icons.shopping_cart,
                              color: primary,
                            ),
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Text(
                  "Big Burger",
                  style: TextStyle(
                      fontSize: 35, fontWeight: FontWeight.bold, color: normal),
                ),
                Row(
                  children: [
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "We Serve\n",
                          style: TextStyle(
                              color: normal,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "\t\t\t\t\t\t the Best",
                          style: TextStyle(
                              color: normal,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                    ])),
                    Image.asset(
                      "assets/images/9.png",
                      width: 200,
                      height: 200,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildRichText(text1, text2) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: text1,
          style:
              const TextStyle(color: primary, fontFamily: "English", fontSize: 25)),
      TextSpan(
          text: text2,
          style: const TextStyle(color: normal, fontFamily: "English", fontSize: 20)),
    ]));
  }
}
