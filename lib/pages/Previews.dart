import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodmoneky/helper/arcPainter.dart';
import 'package:foodmoneky/util/Constant.dart';

class Previews extends StatefulWidget {
  const Previews({super.key});

  @override
  State<Previews> createState() => _PreviewsState();
}

class _PreviewsState extends State<Previews> {
  @override
  Widget build(BuildContext context) {
    var msize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Preview"),
        backgroundColor: accent,
      ),
      body: Stack(
        children: [
          CustomPaint(
            painter: arcPainter(msize),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Big Burger",
                  style: TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold, color: normal),
                ),
                Center(
                    child: Image.asset(
                  "assets/images/9.png",
                  width: 250,
                  height: 250,
                )),
                _buildRichText("Price\n", "\t\t\t3500 ks"),
                _buildRichText("Size\n", "\t\t\tLarge Size"),
                _buildRichText("Promo\n", "\t\t\tCoca Cola"),
                Row(
                  children: [
                    SizedBox(
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(normal),
                            shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)))),
                        child: Icon(
                          Icons.shopping_cart,
                          color: primary,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: SizedBox(
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(normal),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.visibility,
                                color: primary,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Details....",
                                style: TextStyle(fontSize: 15, color: primary),
                              )
                            ],
                          ),
                        ),
                      ),
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
              const TextStyle(fontSize: 50, fontFamily: 'English', color: primary)),
      TextSpan(
          text: text2,
          style: const TextStyle(fontSize: 20, fontFamily: 'English', color: normal))
    ]));
  }
}
