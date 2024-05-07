import 'package:flutter/material.dart';
import 'package:uts_divarizkyalfitrah_21421036/halaman1.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});
  static String routeName = '/halaman2';

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  String npm = "";
  String nama = "";
  String mataKuliah = "";
  double nilaiTugas = 0.0;
  double nilaiUTS = 0.0;
  double nilaiUAS = 0.0;
  double totalNilai = 0;
  String getGrade(double totalNilai) {
    if (totalNilai >= 80 && totalNilai <= 100) {
      return 'A';
    } else if (totalNilai >= 70 && totalNilai < 80) {
      return 'B';
    } else if (totalNilai >= 60 && totalNilai < 70) {
      return 'C';
    } else if (totalNilai >= 50 && totalNilai < 60) {
      return 'D';
    } else {
      return 'E';
    }
  }

  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    npm = data!['npm'];
    nama = data['nama'];
    mataKuliah = data['mataKuliah'];
    nilaiTugas = double.parse(data['nilaiTugas']);
    nilaiUTS = double.parse(data['nilaiUTS']);
    nilaiUAS = double.parse(data['nilaiUAS']);
    totalNilai = (nilaiTugas + nilaiUTS + nilaiUAS) / 3;
    String grade = getGrade(totalNilai);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 12, 247, 3),
        title: const Center(
          child: Text(
            'DATA-DATA MAHASISWA',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("/img/gambar1.jpeg"),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              'Nilai Mahasiswa',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 50,
              width: 20,
            ),
            Text(
              'Npm :      $npm',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Nama :     $nama',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Mata Kuliah :     $mataKuliah',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Nilai:     $totalNilai',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Grade :      $grade',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 30,
              height: 30,
            ),
            OutlinedButton(
              onPressed: () => {
                Navigator.pushNamed(context, Page1.routeName, arguments: {}),
              },
              child: const Text(
                'Kembali',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
