import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  final List _shopItems = [
    //[itemName, itemPrice, imagePath, tileColor];
    ["Avocado", "4.00", "assets/images/avocado.png",Colors.green],
    ["Banana", "6.20", "assets/images/banana.png",Colors.yellow],
    ["Water", "2:00", "assets/images/water.png",Colors.blue],
    ["Chicken", "5.70", "assets/images/chicken.png",Colors.purple],
    ["Bread", "8.00", "assets/images/bread.png",Colors.brown],
    ["Cupcake", "13.50", "assets/images/cupcake2.png",Colors.pink],
  ];

  get shopItems => _shopItems;

  final List _cartItems =[];
  get cartItems => _cartItems;

  void addItemToCart(int index){
    _cartItems.add(shopItems[index]);
    notifyListeners();
  }

  void removeCartItem(int index){
    _cartItems.removeAt(index);
    notifyListeners();
  }
}