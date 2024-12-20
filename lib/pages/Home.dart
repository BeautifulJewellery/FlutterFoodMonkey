import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:foodmoneky/models/Categories.dart';

import '../util/Constant.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildTitleTextBar("Tags"),
          SizedBox(
            height: 150,
            child: Swiper(
              autoplay: true,
              itemCount: tag.length,
              itemBuilder: (context, index) =>
                  Image.asset("assets/images/${tag[index].image}"),
            ),
          ),
          const SizedBox(height: 20,),
          _buildTitleTextBar("Categories"),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 5),
              itemCount: cats.length,
              itemBuilder: (context, index) => _BuildCategoryCard(cats[index]),
            ),
          )
        ],
      )),
    );
  }

  Widget _BuildCategoryCard(Categories cat) {
    return Card(child: Image.asset("assets/images/${cat.image}"));
  }

  Widget _buildTitleTextBar(text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: const BoxDecoration(
          color: secondary,
          borderRadius: BorderRadius.only(topRight: Radius.circular(80))),
      child: Text(
        text,
        style:
            const TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: normal),
      ),
    );
  }
}
