import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/send.dart';

class Menudua extends StatefulWidget {
  const Menudua({super.key});

  @override
  State<Menudua> createState() => _MenuduaState();
}

class _MenuduaState extends State<Menudua> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.yellowAccent,
        centerTitle: true,
        title: const Text(
          "TO DO",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(right: 25, left: 25),
            child: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text("Gula"),
              subtitle: const Text("Tambah 50 Gram Gula"),
              value: isChecked1,
              onChanged: (value) {
                setState(() => isChecked1 = value!);
              },
              tileColor: Colors.yellowAccent,
              activeColor: Colors.black,
              checkColor: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(right: 25, left: 25),
            child: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text("Bobba"),
              subtitle: const Text("Tambah Topping Bobba"),
              value: isChecked2,
              onChanged: (value) {
                setState(() => isChecked2 = value!);
              },
              tileColor: Colors.yellowAccent,
              activeColor: Colors.black,
              checkColor: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(right: 25, left: 25),
            child: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text("Ice"),
              subtitle: const Text("Tambah Ice"),
              value: isChecked3,
              onChanged: (value) {
                setState(() => isChecked3 = value!);
              },
              tileColor: Colors.yellowAccent,
              activeColor: Colors.black,
              checkColor: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(right: 25, left: 25),
            child: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text("CheckBox"),
              subtitle: const Text("Subtitle"),
              value: isChecked4,
              onChanged: (value) {
                setState(() => isChecked4 = value!);
              },
              tileColor: Colors.yellowAccent,
              activeColor: Colors.black,
              checkColor: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          RadioListTile(
            title: const Text('Pilihan 2'),
            value: 'Pilihan 2',
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const Send();
              },
            ),
          );
        },
        backgroundColor: Colors.yellowAccent,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
