import 'package:flutter/material.dart';
import 'package:tugas4_navigation/detail_order_page.dart';

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

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(title: Text('Order Page'),),
      body: Form(
        key: _formKey,
        child: Column(
          spacing: 16,
          children: [
            TextFormField(
              controller: makananController,
              decoration: const InputDecoration(labelText: 'Food Order'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your food order';
                }
                return null;
              },
            ),
            TextFormField(
              controller: minumanController,
              decoration: const InputDecoration(labelText: 'Drink Order'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please enter your Drink order';
                }
                return null;
              },
            ),
            TextFormField(
              controller: jumlahMinumanController,
              decoration: const InputDecoration(labelText: 'Drink QTY Order'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the QTY of drink order';
                }
                return null;
              },
            ),
            ElevatedButton(onPressed: (){
              if (_formKey.currentState!.validate()){
                calculateTotalPrice();
                Navigator.push(context, 
                MaterialPageRoute(builder: 
                (context)=> DetailOrderPage(
                  jumlahMakanan: jumlahMakananController.text,
                  jumlahMinuman: jumlahMinumanController.text,
                  makanan: makananController.text,
                  minuman: minumanController.text,
                  totalHarga: totalHarga,
                )));
              }
            }, child: Text('Order Now'))
          ],
        ),
    ));
  }
}