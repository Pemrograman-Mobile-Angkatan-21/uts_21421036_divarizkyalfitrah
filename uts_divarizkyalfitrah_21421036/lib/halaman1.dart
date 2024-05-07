import 'package:flutter/material.dart';
import 'package:uts_divarizkyalfitrah_21421036/halaman2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});
  static String routeName = '/halaman1';
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  TextEditingController txtNPM = TextEditingController();
  TextEditingController txtNAMA = TextEditingController();
  TextEditingController txtMATKUL = TextEditingController();
  TextEditingController txtNILAITUGAS = TextEditingController();
  TextEditingController txtNILAIUTS = TextEditingController();
  TextEditingController txtNILAIUAS = TextEditingController();

  double totalNilai = 0, tugas = 0, uts = 0, uas = 0;
  totalnilai() {
    setState(() {
      tugas = double.parse(txtNILAITUGAS.text);
      uts = double.parse(txtNILAIUTS.text);
      uas = double.parse(txtNILAIUAS.text);
      totalNilai = tugas + uts + uas / 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 14, 247, 6),
        title: const Center(
          child: Text(
            'MAHASISWA APP',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Input Nilai Mahasiswa',
                style: TextStyle(
                    color: Color.fromARGB(255, 1, 1, 1), fontSize: 26),
              ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
              TextField(
                controller: txtNPM,
                decoration: const InputDecoration(hintText: 'Masukan Npm '),
              ),
              TextField(
                controller: txtNAMA,
                decoration: const InputDecoration(hintText: 'Masukan Nama '),
              ),
              TextField(
                controller: txtMATKUL,
                decoration: const InputDecoration(hintText: 'Masukan Matkul '),
              ),
              TextField(
                controller: txtNILAITUGAS,
                decoration:
                    const InputDecoration(hintText: 'Masukan Nilai Tugas '),
              ),
              TextField(
                controller: txtNILAIUTS,
                decoration:
                    const InputDecoration(hintText: 'Masukan Nilai UTS '),
              ),
              TextField(
                controller: txtNILAIUAS,
                decoration:
                    const InputDecoration(hintText: 'Masukan Nilai UAS '),
              ),
              const SizedBox(
                width: 10,
                height: 10,
              ),
              OutlinedButton(
                onPressed: () => {
                  Navigator.pushNamed(context, Page2.routeName, arguments: {
                    "nama": txtNAMA.text,
                    "npm": txtNPM.text,
                    "mataKuliah": txtMATKUL.text,
                    "nilaiTugas": txtNILAITUGAS.text,
                    "nilaiUTS": txtNILAIUTS.text,
                    "nilaiUAS": txtNILAIUAS.text,
                  }),
                },
                child: const Text(
                  'Submit',
                ),
              ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
            ],
          )),
    );
  }
}
