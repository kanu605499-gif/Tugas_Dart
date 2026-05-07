void main() {
  int batas = 20;
  print("\nSoal nomor 1");
  print("Bilangan ganjil dari 1 sampai $batas:");
  for (int i = 1; i <= batas; i++) {
    if (i % 2 != 0) {
      print("${i} : bilangan ganjil");
    }
  }
  print("\nSoal nomor 2");
  String bintang = "*";
  print("\n" + bintang * 5);

  print("\nSoal nomor 3");
  String nama = "Kanu";
  int j = 5;
  while (j == 5) {
    for (int k = 0; k < 4; k++) {
      print("\n" + "nama saya: ${nama}");
    }
    j++;
  }
  print("\nSoal nomor 4");
  List<String> namaBuwah = ["Apel", "Jeruk", "Mangga", "Anggur"];
  print("Nama-nama buah:");
  for (String buah in namaBuwah) {
    print("\n" + "- $buah");
  }
  print("\nSoal nomor 5");
  List<String> daftarBelanja = ["Beras", "Minyak", "Telur", "Gula", "Sabun"];
  int nomor = 1;

  for (String item in daftarBelanja) {
    print("\n" + "Item ke-$nomor: $item");
    nomor++;
  }
}
