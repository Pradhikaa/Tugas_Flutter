import 'package:flutter/material.dart';
import "./menu_dua.dart";

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      // appBar: AppBar(
      //   backgroundColor: Colors.grey[200],
      //   shadowColor: Colors.transparent,
      //   iconTheme: const IconThemeData(color: Colors.black),
      // ),
      appBar: AppBar(
        title: const Text(
          'Menu Kopi',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.grey[200],
        shadowColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Tampilkan Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Ini snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Ke page selanjutnya',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Page baruu'),
                    ),
                    body: const Center(
                      child: Text(
                        'ini next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.fromLTRB(25, 0, 0, 0),
            child: const Text(
              "How do you like your coffee?",
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(height: 25),
          Container(
            color: Colors.white,
            margin: const EdgeInsets.only(right: 30, left: 30),
            child: TextFormField(
              decoration: const InputDecoration(
                
                labelText: 'Search Kopi Yang anda sukai',
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            margin: const EdgeInsets.only(right: 30, left: 30),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              leading: Image.network(
                "images/GreenTea.png",
              ),
              title: const Text(
                "Green Tea",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "\$4.10",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.arrow_forward_rounded),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const Menudua();
                }));
              },
              tileColor: Colors.white,
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(right: 30, left: 30),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              leading: Image.network(
                "images/chocolate.png",
              ),
              title: const Text(
                "Latte",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "\$9.00",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.arrow_forward_rounded),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const Menudua();
                }));
              },
              tileColor: Colors.white,
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(right: 30, left: 30),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              leading: Image.network(
                "images/strowberry.png",
              ),
              title: const Text(
                "Strowberry",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "\$9.90",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.arrow_forward_rounded),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const Menudua();
                }));
              },
              tileColor: Colors.white,
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(right: 30, left: 30),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              leading: Image.network(
                "images/cappucino.png",
              ),
              title: const Text(
                "Cappucino",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "\$5.70",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.arrow_forward_rounded),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const Menudua();
                }));
              },
              tileColor: Colors.white,
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[200],
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_rounded), label: 'cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_checkout_rounded),
                label: 'Checkout'),
          ]),
    );
  }
}
// floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.of(context).push(
      //       MaterialPageRoute(
      //         builder: (context) {
      //           return const Menudua();
      //         },
      //       ),
      //     );
      //   },
      //   child: const Icon(Icons.keyboard_arrow_right),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,