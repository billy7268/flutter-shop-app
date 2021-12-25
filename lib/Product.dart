import 'package:flutter/material.dart';
class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "home chair",
      price: 500,
      size: 12,
      description: dummyText,
      image: "assets/imagess.jfif",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "office chair",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 3,
      title: "gaming chair",
      price: 100,
      size: 12,
      description: dummyText,
      image: "assets/download.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 4,
      title: "table chair",
      price: 75,
      size: 12,
      description: dummyText,
      image: "assets/download (1).png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 5,
      title: "table ",
      price: 457,
      size: 12,
      description: dummyText,
      image: "assets/t1.jfif",
      color: Color(0xFF3D82AE)),
  Product(
      id:6,
      title: "table ",
      price: 235,
      size: 12,
      description: dummyText,
      image: "assets/t2.jfif",
      color: Color(0xFF3D82AE)),
  Product(
      id: 7,
      title: "table ",
      price: 87,
      size: 12,
      description: dummyText,
      image: "assets/t3.jfif",
      color: Color(0xFF3D82AE)),
  Product(
      id: 8,
      title: "table ",
      price: 363,
      size: 12,
      description: dummyText,
      image: "assets/t4.jfif",
      color: Color(0xFF3D82AE)),
  Product(
      id: 9,
      title: "bookshelf",
      price: 122,
      size: 12,
      description: dummyText,
      image: "assets/cc.jfif",
      color: Color(0xFF3D82AE)),
  Product(
      id: 10,
      title: "bookshelf",
      price: 888,
      size: 12,
      description: dummyText,
      image: "assets/cc.jfif",
      color: Color(0xFF3D82AE)),
  Product(
      id: 11,
      title: "bookshelf",
      price: 999,
      size: 12,
      description: dummyText,
      image: "assets/cc.jfif",
      color: Color(0xFF3D82AE)),
  Product(
      id: 12,
      title: "bookshelf",
      price: 546,
      size: 12,
      description: dummyText,
      image: "assets/cc.jfif",
      color: Color(0xFF3D82AE)),
  Product(
      id: 13,
      title: "carpet",
      price: 11,
      size: 12,
      description: dummyText,
      image: "assets/bb.jfif",
      color: Color(0xFF3D82AE)),
  Product(
      id: 14,
      title: "carpet",
      price: 12,
      size: 12,
      description: dummyText,
      image: "assets/bb.jfif",
      color: Color(0xFF3D82AE)),
  Product(
      id: 15,
      title: "carpet",
      price: 35,
      size: 12,
      description: dummyText,
      image: "assets/bb.jfif",
      color: Color(0xFF3D82AE)),
  Product(
      id: 16,
      title: "carpet",
      price: 66,
      size: 12,
      description: dummyText,
      image: "assets/bb.jfif",
      color: Color(0xFF3D82AE)),


];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

