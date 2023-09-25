import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homecontroller extends GetxController {
  TextEditingController namaSiswa = TextEditingController();
  TextEditingController namaMapel = TextEditingController();
  TextEditingController jnsMapel = TextEditingController();
  TextEditingController namacontroller = TextEditingController();

  RxString nama = RxString('');
  RxBool isOpen = RxBool(true);
  RxBool isClose = RxBool(false);

  RxInt count = RxInt(0);
  RxList<String> siswaNama = RxList<String>();
  RxMap<String, String> listMapel = RxMap<String, String>();

  void setTog(bool toggle) {
    isOpen(toggle);
    print(toggle);
  }

  RxInt x = 0.obs;

  void increaseX() {
    x.value++;
  }

  void decreaseX() {
    x.value--;
  }

  // List screen

  void tambahkeList(String nama) {
    siswaNama.add(nama);
    print(siswaNama.value);
  }

  void addSiswa(String nama) {
    siswaNama.add(nama);
    namaSiswa.text = '';
    print(siswaNama.value);
  }

  void removeSiswa(int index) {
    siswaNama.removeAt(index);
  }

  void addMapel(String namaMapel, String jnsMapel) {
    listMapel[namaMapel] = jnsMapel;
    print(listMapel.value);
  }

  // void ChangeName(String nn) {
  //   nama.value = nn;
  //   print(nama.value);
  //   Get.snackbar('nilai dari variabel nama adalah : ', nama.value,
  //       snackPosition: SnackPosition.BOTTOM, duration: Duration(seconds: 3));
  // }
}
