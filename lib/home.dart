import 'package:application/detail.dart';
import 'package:application/product.dart';
import 'package:flutter/material.dart';
import 'package:application/drawer.dart';
import 'package:application/products.dart';

import 'carousel.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myProducts = [...hairCareList, ...skinCareList, ...makeupList];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const MyDrawer(),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(120, 1, 23, 96),
          title: const ListTile(
            trailing: Icon(Icons.shopping_cart, color: Colors.white),
            title: Text("Products",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 85,
                    height: 35,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(238, 235, 92, 99),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Product("Hair Care", hairCareList);
                          },
                        ));
                      },
                      child: const Text('Hair', style: TextStyle(fontSize: 14)),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 85,
                    height: 35,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(238, 235, 92, 99),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Product("Skin Care", skinCareList);
                          },
                        ));
                      },
                      child: const Text('Skin', style: TextStyle(fontSize: 14)),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 85,
                    height: 35,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(238, 235, 92, 99),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Product("Body Care", bodyCareList);
                          },
                        ));
                      },
                      child: const Text('Body', style: TextStyle(fontSize: 14)),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 85,
                    height: 35,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(238, 235, 92, 99),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Product("Makeup", makeupList);
                          },
                        ));
                      },
                      child:
                          const Text('Makeup', style: TextStyle(fontSize: 14)),
                    ),
                  ),
                ],
              ),
            ),
            MyCarousel(differentProducts),
            SizedBox(
              height: 485,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: myProducts.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return GridTile(
                      key: ValueKey(index),
                      child: GestureDetector(
                        child:
                            Image.network(myProducts[index], fit: BoxFit.cover),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) {
                              return Detail(myProducts[index]);
                            },
                          ));
                        },
                      ),
                      footer: const SizedBox(
                        height: 35,
                        child: GridTileBar(
                          backgroundColor: Colors.black54,
                          subtitle: Text("\$15.00",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                          trailing: Icon(Icons.shopping_cart),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
