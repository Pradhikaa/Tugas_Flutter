import 'package:flutter/material.dart';
import 'controller/homecontroller.dart';
import 'package:get/get.dart';

class listscreen extends StatelessWidget {
  const listscreen({super.key});

  @override
  Widget build(BuildContext context) {
    homecontroller hc = Get.put(homecontroller());
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Screen"),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 32, right: 32),
        child: Column(
          children: [
            const SizedBox(height: 16),
            TextField(
              controller: hc.namaSiswa,
              decoration: const InputDecoration(label: Text("Input Nama")),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  hc.tambahkeList(hc.namaSiswa.text);
                },
                child: const Text("submit")),
            Expanded(
                child: Obx(() => ListView.builder(
                      shrinkWrap: true,
                      itemCount: hc.siswaNama.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Text(hc.siswaNama.value[index]),
                        );
                      },
                    )))
          ],
        ),
      ),
    );
  }
}
