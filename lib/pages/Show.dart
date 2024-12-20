import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:foodmoneky/helper/customGrid.dart';

import '../models/Product.dart';
import '../models/Tags.dart';
import '../util/Constant.dart';

class Show extends StatefulWidget {
  const Show({super.key});

  @override
  State<Show> createState() => _ShowState();
}

class _ShowState extends State<Show> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          _buildCustomNavBar(),
          Expanded(child: customGrid.makeProductGrid(products,refresh))
        ],
      ),
    );
  }

  Widget _buildCustomNavBar() {
    return Container(
      color: primary,
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => _buildNavTitle(tag[index], index)),
        itemCount: tag.length,
      ),
    );
  }

  Widget _buildNavTitle(Tags tagdata, index) {
    return GestureDetector(
      onTap: () {
        currentIndex = index;
        setState(() {});
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              tagdata.name,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Container(
            width: 40,
            height: 5,
            decoration: BoxDecoration(
              color: currentIndex == index ? accent : Colors.transparent,
            ),
          )
        ],
      ),
    );
  }

  refresh() {
    setState(() {
      print("fdfj");
    });
  }
}
