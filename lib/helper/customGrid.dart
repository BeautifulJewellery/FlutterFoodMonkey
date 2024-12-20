
import 'package:flutter/material.dart';
import 'package:foodmoneky/util/Global.dart';

import '../models/Product.dart';
import '../util/Constant.dart';

class customGrid {
  static makeProductGrid(List<Product> productlist, Function changestate) {
    return GridView.builder(
        itemCount: productlist.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) =>
            _BuildProductCard(productlist[index], changestate));
  }

  static Widget _BuildProductCard(Product productdata, Function changestate) {
    return Card(
      child: Column(
        children: [
          Text(
            productdata.name,
            style: const TextStyle(
                fontSize: 20, color: normal, fontWeight: FontWeight.bold),
          ),
          Image.asset(
            "assets/images/${productdata.image}",
            width: 120,
            height: 120,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Global.AddToCard(productdata);
                  changestate();
                },
                child: const Icon(
                  Icons.shopping_cart,
                  color: accent,
                ),
              ),
              const Text("3500 ls"),
              const Icon(
                Icons.visibility,
                color: accent,
              )
            ],
          )
        ],
      ),
    );
  }
}
