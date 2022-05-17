import 'package:application/home.dart';
import 'package:flutter/material.dart';
import 'package:application/products.dart';
import 'package:application/product.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 125,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromARGB(238, 235, 92, 99),
              ),
              child: ListTile(
                leading: const SizedBox(
                  width: 45,
                  height: 45,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://img.freepik.com/free-vector/young-woman-white_25030-39527.jpg?t=st=1651228422~exp=1651229022~hmac=78909f429a77ba90f47d3fc60b6dd23e9ae89fc912d64ab061646b62cd443eb0&w=740"),
                    radius: 50,
                  ),
                ),
                title: const Text(
                  'Reem',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
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
          ),
          ListTile(
            title: const Text('Hair Care'),
            onTap: () {
              Navigator.of(context).pop();

              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) {
                  return Product("Hair Care", hairCareList);
                },
              ));
            },
          ),
          ListTile(
            title: const Text('Skin Care'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) {
                  return Product("Skin Care", skinCareList);
                },
              ));
            },
          ),
          ListTile(
            title: const Text('Body Care'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) {
                  return Product("Body Care", bodyCareList);
                },
              ));
            },
          ),
          ListTile(
            title: const Text('Makeup'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) {
                  return Product("Makeup", makeupList);
                },
              ));
            },
          ),
        ],
      ),
    );
  }
}
