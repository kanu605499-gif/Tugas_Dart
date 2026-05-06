import 'dart:io';

void main() {
  //1. Declare tipe data, format data dan output tampilan
  print("=" * 50);
  print("      SISTEM EVALUASI MAHASISWA (STDIN VERSION)");
  print("=" * 50);

  bool lanjut = true;
  int totalkehadiran = 16;

  while (lanjut) {
    //1.1 Mengatur Syntax untuk input data manual
    stdout.write("\nMasukkan Nama Mahasiswa : ");
    String namaMahasiswa = stdin.readLineSync() ?? "Anonim";

    stdout.write("Masukkan Nilai UTS      : ");
    int nilaiUTS = int.parse(stdin.readLineSync() ?? '0');

    stdout.write("Masukkan Nilai UAS      : ");
    int nilaiUAS = int.parse(stdin.readLineSync() ?? '0');

    stdout.write("Jumlah Hadir (0-16)     : ");
    int absen = int.parse(stdin.readLineSync() ?? '0');

    // 2. Menentukan rumus untuk diubah kedalam syntax boolean
    double persentaseAbsen = (absen / totalkehadiran) * 100;
    double nilaiRata = (nilaiUTS + nilaiUAS) / 2;

    bool lulusNilaiRata = nilaiRata >= 70;
    bool lulusAbsen = persentaseAbsen >= 75.0;
    bool lulusMinimal = (nilaiUTS >= 60 && nilaiUAS >= 60);

    bool Lulus = lulusNilaiRata && lulusAbsen && lulusMinimal;

    // 3. Aplikasi rumus boolean dalam menentukan output tampilan
    print("\n" + "-" * 50);
    print("HASIL EVALUASI");
    print("-" * 50);
    print("Nama        : ${namaMahasiswa.toUpperCase()}");
    print("Nilai Rata  : $nilaiRata");
    print("Kehadiran   : $persentaseAbsen% ($absen/$totalkehadiran)");
    print("Status      : ${Lulus ? 'LULUS [O]' : 'TIDAK LULUS [X]'}");

    if (!Lulus) {
      List<String> alasan = [];
      if (!lulusNilaiRata) alasan.add("Nilai Rata-rata < 70");
      if (!lulusAbsen) alasan.add("Absen < 75%");
      if (!lulusMinimal) alasan.add("Komponen nilai < 60");
      
      print("Keterangan  : ${alasan.join(', ')}");
    }
    print("-" * 50);

  //Mengulang looping untuk mempermudah user dalam menginput data mahasiswa lain

    stdout.write("\nInput mahasiswa lain? (y/n): ");
    String? pilihan = stdin.readLineSync()?.toLowerCase();
    if (pilihan != 'y') {
      lanjut = false;
      print("Program Selesai.");
    }
  }
}