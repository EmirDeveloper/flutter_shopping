import 'package:flutter/material.dart';
import './models/category.dart';
import 'models/sneaker.dart';

const MainCategory = [
  Category(id: 'c1', name: 'Nike', color: Color.fromARGB(255, 203, 202, 202)),
  Category(id: 'c2', name: 'Puma', color: Color.fromARGB(255, 203, 202, 202)),
  Category(id: 'c3', name: 'Adidas', color: Color.fromARGB(255, 203, 202, 202)),
  Category(
      id: 'c4', name: 'New Balance', color: Color.fromARGB(255, 203, 202, 202)),
  Category(id: 'c5', name: 'Gucci', color: Color.fromARGB(255, 203, 202, 202)),
  Category(id: 'c6', name: 'Veja', color: Color.fromARGB(255, 203, 202, 202)),
  Category(
      id: 'c7', name: 'Converse', color: Color.fromARGB(255, 203, 202, 202)),
  Category(id: 'c9', name: 'Reebok', color: Color.fromARGB(255, 203, 202, 202)),
  Category(
      id: 'c15', name: 'Air Jordan', color: Color.fromARGB(255, 203, 202, 202)),
  Category(
      id: 'c16', name: 'Balenciaga', color: Color.fromARGB(255, 203, 202, 202)),
];

const MainSneaker = [
  Sneaker(
      id: 't1',
      categories: 'c1',
      name: 'Nike',
      image: 'assets/images/nike1.jpg',
      size: 41,
      price: 350.99,
      delivery: 60,
      color: 'black',
      gender: 'Male'),
  Sneaker(
      id: 't2',
      categories: 'c1',
      name: 'Nike',
      image: 'assets/images/nike2.jpg',
      size: 42,
      price: 350.99,
      delivery: 60,
      color: 'black',
      gender: 'Male'),
  Sneaker(
      id: 't3',
      categories: 'c1',
      name: 'Nike',
      image: 'assets/images/nike3.jpg',
      size: 40,
      price: 350.99,
      delivery: 60,
      color: 'black',
      gender: 'Male'),
  Sneaker(
      id: 't4',
      categories: 'c2',
      name: 'Puma',
      image: 'assets/images/puma1.jpg',
      size: 39,
      price: 350.99,
      delivery: 60,
      color: 'black',
      gender: 'Male'),
  Sneaker(
      id: 't5',
      categories: 'c3',
      name: 'Adidas',
      image: 'assets/images/adidas1.jpg',
      size: 42,
      price: 450.99,
      delivery: 30,
      color: 'Blue',
      gender: 'Male'),
  Sneaker(
      id: 't6',
      categories: 'c3',
      name: 'Adidas',
      image: 'assets/images/adidas2.jpg',
      size: 43,
      price: 500.50,
      delivery: 60,
      color: 'White',
      gender: 'Male'),
];
