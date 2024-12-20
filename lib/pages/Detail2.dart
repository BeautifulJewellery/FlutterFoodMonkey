import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodmoneky/util/Constant.dart';

class Detail2 extends StatefulWidget {
  const Detail2({super.key});

  @override
  State<Detail2> createState() => _Detail2State();
}

class _Detail2State extends State<Detail2> {
  List<String> images = ["1.png", "2.png", "3.png", "4.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail2"),
        backgroundColor: accent,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 150,
            child: Swiper(
              autoplay: true,
              itemCount: images.length,
              itemBuilder: (context, index) =>
                  Image.asset("assets/images/${images[index]}"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Big Burger",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Stack(
                      children: [
                        const Icon(
                          Icons.shopping_cart,
                          size: 40,
                          color: secondary,
                        ),
                        Positioned(
                          right: -5,
                          top: -5,
                          child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                color: normal,
                                borderRadius: BorderRadius.circular(25)),
                            child: Center(
                                child: Text(
                              "2".padLeft(2, "0"),
                              style: const TextStyle(color: primary),
                            )),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildRichText("Price\n", "\t\t\t3500 ks"),
                    _buildRichText("Size\n", "\t\t\tLarge Size"),
                    _buildRichText("Promo\n", "\t\t\tCoca Cola"),
                  ],
                ),
                const Text(
                  sampleparagraph,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: normal,
                    fontSize: 16,
                  ),
                ),
                Table(
                  border: TableBorder.all(
                    style: BorderStyle.solid,
                    width: 0.5,
                  ),
                  children: [
                    const TableRow(children: [
                      Center(
                          child: Text(
                        "Feature",
                        style: TextStyle(fontSize: 20, color: secondary),
                      )),
                      Center(
                          child: Text(
                        "Value",
                        style: TextStyle(fontSize: 20, color: secondary),
                      )),
                    ]),
                    _buildTableRow("Price", "3500 ks"),
                    _buildTableRow("Price", "3500 ks"),
                  ],
                ),
                const Text(
                  sampleparagraph,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: normal,
                    fontSize: 16,
                  ),
                ),
                const Text(
                  "Warrenty System",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25, color: normal),
                ),
                Image.asset("assets/images/7_Day_Return_Warrranty.png"),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  _buildTableRow(t1, t2) {
    return TableRow(children: [
      Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          t1,
          style: const TextStyle(fontSize: 15, color: normal),
        ),
      )),
      Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          t2,
          style: const TextStyle(fontSize: 15, color: normal),
        ),
      )),
    ]);
  }

  Widget _buildRichText(text1, text2) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: text1,
          style: const TextStyle(
            color: normal,
            fontFamily: "English",
            fontSize: 25,
          )),
      TextSpan(
          text: text2,
          style: const TextStyle(
              color: secondary,
              fontFamily: "English",
              fontSize: 20,
              fontWeight: FontWeight.bold)),
    ]));
  }
}
