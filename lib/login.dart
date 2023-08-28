import 'package:flutter/material.dart';
import 'package:latihan/pages/menu.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/coffe.jpg",
              width: 200,
            ),
            const Text(
              "Beli Kopi",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              "Pilih Menu Kopi Yang Anda Sukai!",
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const Menu();
                      },
                    ),
                  );
                },
                child: const Text("Enter Shop"))
          ],
        ),
      ),
    );
  }
}
