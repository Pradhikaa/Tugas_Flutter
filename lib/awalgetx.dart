import 'package:flutter/material.dart';
import 'controller/homecontroller.dart';
import 'package:get/get.dart';

class awalgetx extends StatelessWidget {
  const awalgetx({super.key});

  @override
  Widget build(BuildContext context) {
    homecontroller ic = Get.put(homecontroller());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  color: Colors.white,
                  width: 100,
                  height: 110,
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: () {
                            Get.toNamed('/indec');
                          },
                          child: const Text('Edit Kelas')),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: () {
                            Get.toNamed('/listscreen');
                          },
                          child: const Text('Tambah Nama Siswa')),
                      const SizedBox(height: 10),
                      TextButton(
                          onPressed: () {
                            Get.toNamed('/listmap');
                          },
                          child: const Text('Tambah Mapel')),
                    ],
                  ),
                ));
              },
              icon: const Icon(Icons.edit_note_outlined))
        ],
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(height: 4),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(5),
                color: Colors.orange,
                child: const Text(
                  'XII RPL 2',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(5),
                color: Colors.yellow[800],
                child: Row(
                  children: [
                    const Text("Jumlah Siswa"),
                    const Spacer(),
                    Obx(() => Text(ic.x.toString())),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          ic.increaseX();
                        },
                        icon: const Icon(Icons.add)),
                    IconButton(
                        onPressed: () {
                          ic.decreaseX();
                        },
                        icon: const Icon(Icons.remove)),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(5),
                color: Colors.yellow[800],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => Text(ic.nama.value == false ? "Open" : "closed"),
                    ),
                    Obx(() => Switch(
                        value: ic.isOpen.value,
                        activeColor:
                            ic.isOpen.value == true ? Colors.green : Colors.red,
                        onChanged: (value) {
                          ic.setTog(value);
                        }))
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(5),
                color: Colors.orange,
                child: const Text(
                  'Nama Siswa',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
