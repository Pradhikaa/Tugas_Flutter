import 'package:flutter/material.dart';
import 'controller/homecontroller.dart';
import 'package:get/get.dart';

class listmap extends StatelessWidget {
  const listmap({super.key});

  @override
  Widget build(BuildContext context) {
    homecontroller hc = Get.put(homecontroller());
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 16),
            TextField(
              controller: hc.namaMapel,
              decoration: const InputDecoration(label: Text("Nama Mapel")),
            ),
            TextField(
              controller: hc.jnsMapel,
              decoration: const InputDecoration(label: Text("Kode Mapel")),
            ),
            ElevatedButton(
                onPressed: () {
                  hc.addMapel(hc.namaMapel.text, hc.jnsMapel.text);
                },
                child: const Text("Submit")),
            Expanded(
              child: Obx(
                () => ListView.builder(
                    itemCount: hc.listMapel.length,
                    itemBuilder: (context, index) {
                      String key = hc.listMapel.keys.elementAt(index);
                      return ListTile(
                        title: Text('${hc.listMapel[key]}'),
                        // title: Text('${hc.listMapel[key]?["nama"]}'),
                        // subtitle: Text('${hc.listMapel[key]?["kode"]}'),x
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
