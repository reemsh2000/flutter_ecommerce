import 'package:application/home.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String image;
  Detail(this.image);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(10),
        child: GestureDetector(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 100),
            child: Center(
              child: Column(
                children: [
                  const Text("Product Details",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 350,
                    height: 350,
                    child: Hero(
                      tag: "imageHero",
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ListTile(
                    title: Text(
                      "\$ 15.00 ",
                    ),
                    trailing: Icon(
                      Icons.add_shopping_cart,
                      color: Colors.greenAccent,
                    ),
                  )
                ],
              ),
            ),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) {
                return const Home();
              },
            ));
          },
        ),
      )),
    );
  }
}
