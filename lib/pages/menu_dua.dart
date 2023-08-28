import 'package:flutter/material.dart';

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
              title: const Text("CheckBox"),
              subtitle: const Text("Subtitle"),
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
              title: const Text("CheckBox"),
              subtitle: const Text("Subtitle"),
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
              title: const Text("CheckBox"),
              subtitle: const Text("Subtitle"),
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
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
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
