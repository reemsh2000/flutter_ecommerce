import 'package:flutter/material.dart';

import 'package:application/home.dart';
import 'package:application/drawer.dart';
import 'package:application/carousel.dart';

import 'detail.dart';

class Product extends StatelessWidget {
  final String title;
  final List<String> products;
  Product(this.title, this.products);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: const MyDrawer(),
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(120, 1, 23, 96),
            title: ListTile(
              title: Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              trailing: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const Home();
                      },
                    ));
                  },
                  icon: const Icon(Icons.home, color: Colors.white)),
            ),
          ),
          body: Column(
            children: <Widget>[
              MyCarousel(products),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 525,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 2 / 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemCount: products.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return GridTile(
                        key: ValueKey(index),
                        child:
                            GestureDetector(child: Image.network(products[index], fit: BoxFit.cover),
                              onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) {
                              return Detail(products[index]);
                            },
                          ));
                        },),
                        footer: SizedBox(
                          height: 37,
                          child: GridTileBar(
                            title: Text('$title product'),
                            backgroundColor: Colors.black54,
                            subtitle: const Text("\$15.00",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            trailing: const Icon(Icons.shopping_cart),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
