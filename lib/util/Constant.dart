import 'package:flutter/material.dart';
import 'package:foodmoneky/models/Categories.dart';

import '../models/Product.dart';
import '../models/Tags.dart';

const Color yellow = Color(0xffFDC054);
const Color darkGrey = Color(0xff202020);
const Color transparentYellow = Color.fromRGBO(253, 184, 70, 0.7);

const Color primary = Color(0xFFF6F6F6);
const Color secondary = Color(0xFFFFBB91);
const Color accent = Color(0xFFFF8E6E);
const Color normal = Color(0xFF515070);

List<Categories> cats = [
  Categories(image: "Category_Burger.png", name: "Burger"),
  Categories(image: "Category_Chicken_Fried.png", name: "Chicken Fried"),
  Categories(image: "Category_Coffee.png", name: "Coffee"),
  Categories(image: "Category_French_Fried.png", name: "French Fried"),
  Categories(image: "Category_Hotpot.png", name: "Hotpot"),
  Categories(image: "Category_Noodle.png", name: "Noodle"),
  Categories(image: "Category_Soft Drink.png", name: "Soft Drink"),
  Categories(
      image: "7_Day_Return_Warrranty.png", name: "Return Warrranty Drink"),
];

List<Tags> tag = [
  Tags(name: "Popular", image: "popular.jpg"),
  Tags(name: "Flash Sale", image: "flash_sale.jpg"),
  Tags(name: "Drink", image: "Drink.png"),
  Tags(name: "Food", image: "Food.png"),
];

List<Product> products = [
  Product(id: "1", image: "1.png", name: "Burger King"),
  Product(id: "2", image: "2.png", name: "Burger Queen"),
  Product(id: "3", image: "3.png", name: "Burger Prince"),
  Product(id: "4", image: "4.png", name: "Burger Princess"),
  Product(id: "5", image: "5.png", name: "Burger Baby"),
  Product(id: "6", image: "6.png", name: "Burger Daddy"),
  Product(id: "7", image: "7.png", name: "Burger Mummy"),
  Product(id: "8", image: "8.png", name: "Burger Papa"),
  Product(id: "9", image: "9.png", name: "Burger Mama"),
];

const sampleparagraph =
    """Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap intoelectronic typesetting, remaining essentially unchanged.""";
