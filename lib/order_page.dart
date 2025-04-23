import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
 State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State <OrderPage> {
  final TextEditingController makananController = TextEditingController();
  final TextEditingController minumanController = TextEditingController();
  final TextEditingController jumlahMakananController = TextEditingController();
  final TextEditingController jumlahMinumanController = TextEditingController();
  int totalHarga = 0;

  void calculateTotalPrice(){
    // Ambil nilai jumlah makanan dan minuman dari input, ubah ke int, jika gagal parsing jadikan 0
    int jumlahMakanan = int.tryParse(jumlahMakananController.text) ?? 0;
    int jumlahMinuman = int.tryParse(jumlahMinumanController.text) ?? 0;

    setState(() {
  // Menghitung total harga berdasarkan jumlah makanan dan minuman
  // dan memperbarui tampilan UI dengan nilai total harga yang baru
  totalHarga = (jumlahMakanan * 32000) + (jumlahMinuman * 5000);
});

  }
}