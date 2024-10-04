import 'package:flutter/material.dart';



class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final int price;
  final List <Color> colors ;
  final String category;
  final double rate;
  int quantity;


  Product(
    {
      required this.title,
      required this.review,
      required this.description,
      required this.image,
      required this.price,
      required this.colors,
      required this.seller,
      required this.category,
      required this.rate,
      required this.quantity
    }
  );
}


final List<Product> products = [
  Product(
    title: "Headphones",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,", 
    image: "images/all/wireless.png", 
    price: 120, 
    seller: "Tariqul islam", 
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange
    ], 
    category: "Electronics", 
    review: "(320 Reviews)", 
    rate: 4.8, 
    quantity: 1
    ),



    
  Product(
    title: "Woman Sweter",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,", 
    image: "images/all/sweet.png", 
    price: 150, 
    seller: "Fashion House", 
    colors: [
      Colors.brown,
      Colors.deepPurple,
      Colors.pink
    ], 
    category: "Woman Fashion", 
    review: "(62 Reviews)", 
    rate: 4.5, 
    quantity: 1
    ),



  Product(
    title: "Smart Watch",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,", 
    image: "images/all/miband.jpg", 
    price: 60, 
    seller: "Abdullah Al-Amin", 
    colors: [
      Colors.black,
      Colors.amber,
      Colors.purple
    ], 
    category: "Watch", 
    review: "(96 Reviews)", 
    rate: 4.7, 
    quantity: 5
    ),



  Product(
    title: "Mens Jacket",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,", 
    image: "images/all/jacket.png", 
    price: 188, 
    seller: "Kholilur Rahman", 
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green
    ], 
    category: "Manes Fashion", 
    review: "(213 Reviews)", 
    rate: 4.4, 
    quantity: 15
    ),



];