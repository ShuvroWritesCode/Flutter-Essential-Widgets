import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping List App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShoppingListPage(),
    );
  }
}

class ShoppingListPage extends StatelessWidget {
  // Define a list of shopping items
  final List<Map<String, String>> shoppingItems = [
    {'name': 'Apples', 'icon': '🍎'},
    {'name': 'Bananas', 'icon': '🍌'},
    {'name': 'Milk', 'icon': '🥛'},
    {'name': 'Bread', 'icon': '🍞'},
    {'name': 'Eggs', 'icon': '🥚'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping List'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Add your cart functionality here
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: shoppingItems.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Text(shoppingItems[index]['icon']!),
            title: Text(shoppingItems[index]['name']!),
            onTap: () {
              // Add your item selection logic here
            },
          );
        },
      ),
    );
  }
}
