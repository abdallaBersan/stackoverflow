// ignore_for_file: prefer_const_constructors

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:stackoverflow/model/Category.dart';
import 'package:stackoverflow/model/Product.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> showProducts = [];

  @override
  Widget build(BuildContext context) {
    log('build');
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF166619),
          title: Text('Restaurant'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 150,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: ((context, index) {
                  Category category = categories[index];
                  return InkWell(
                    onTap: () {
                      setState(() {
                        // showProducts.clear();

                        showProducts = products
                            .where(
                                (product) => product.categoryId == category.id)
                            .toList();

                        // showProducts.addAll(listFiltre);
                      });
                    },
                    child: GridTile(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        width: 110,
                        color: category.color,
                        child: Center(child: Text(category.title)),
                      ),
                    ),
                  );
                }),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: showProducts.length,
                itemBuilder: ((context, index) {
                  return GridTile(
                    child: Container(
                      width: 110,
                      color: showProducts[index].color,
                      child: Center(child: Text(showProducts[index].title)),
                    ),
                    footer: Center(
                      child: Text('${showProducts[index].price} €'),
                    ),
                  );
                }),
              ),
            ),
          ],
        ));
  }
}
