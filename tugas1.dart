/*
    Tugas 1 Dart - Mobile App Developer PPKD Jakarta Pusat  
    Kanugrahan Ekaputera Yuniyanto*/

void main() {
  // 1. Declare tipe data dan isi data
  List<String> namaMahasiswa = [
    "John Doe",
    "Jane Doe",
    "Agus",
    "Rahmat",
    "Tini",
    "Abdul",
  ];
  List<int> umurMahasiswa = [22, 22, 19, 21, 18, 23];
  List<double> tinggiMahasiswa = [175.5, 186.8, 171.6, 151.2, 162.3, 195.3];
  List<String> bukuFavoritMahasiswa = [
    "Beyond Good and Evil",
    "The Myth of Sisyphus",
    "Fundamental Principles of the Metaphysic of Morals",
    "Jujutsu Kaisen",
    "Crime and Punishment",
    "Thus Spoke Zarathustra",
  ];
  bool aktifMahasiswa = true;

  // 2. Data mentah diproses dan dikelompokkan dalam bentuk Map

  /// List Map untuk menggabungkan tipe data yang telah dideclare
  List<Map<String, dynamic>> dataMahasiswa = [
    {
      "nama": namaMahasiswa[0],
      "umur": umurMahasiswa[0],
      "tinggi": tinggiMahasiswa[0],
      "bukuFavorit": bukuFavoritMahasiswa[0],
      "infotambahan": {
        "alamat": "Jl. Camar No. 111",
        "profesi": "Mahasiswa",
        "hobi": "Apa aja asal jangan coding",
      },
      "aktif": aktifMahasiswa,
    },
    {
      "nama": namaMahasiswa[1],
      "umur": umurMahasiswa[1],
      "tinggi": tinggiMahasiswa[1],
      "bukuFavorit": bukuFavoritMahasiswa[1],
      "infotambahan": {
        "alamat": "Jl. Kutolong No. 21",
        "profesi": "Mahasiswa",
        "hobi": "Apa aja asal jangan masak",
      },
      "aktif": aktifMahasiswa,
    },
    {
      "nama": namaMahasiswa[2],
      "umur": umurMahasiswa[2],
      "tinggi": tinggiMahasiswa[2],
      "bukuFavorit": bukuFavoritMahasiswa[2],
      "infotambahan": {
        "alamat": "Jl. Kebon Jeruk No. 31",
        "profesi": "Mahasiswa",
        "hobi": "Apa aja asal jangan olahraga",
      },
      "aktif": aktifMahasiswa,
    },
    {
      "nama": namaMahasiswa[3],
      "umur": umurMahasiswa[3],
      "tinggi": tinggiMahasiswa[3],
      "bukuFavorit": bukuFavoritMahasiswa[3],
      "infotambahan": {
        "alamat": "Jl. Pulogaban No. 41",
        "profesi": "Dukun",
        "hobi": "Apa aja asal jangan nyawit",
      },
      "aktif": false,
    },
    {
      "nama": namaMahasiswa[4],
      "umur": umurMahasiswa[4],
      "tinggi": tinggiMahasiswa[4],
      "bukuFavorit": bukuFavoritMahasiswa[4],
      "infotambahan": {
        "alamat": "Jl. Manggamas No. 51",
        "profesi": "Mahasiswa",
        "hobi": "Apa aja asal jangan belajar",
      },
      "aktif": aktifMahasiswa,
    },
    {
      "nama": namaMahasiswa[5],
      "umur": umurMahasiswa[5],
      "tinggi": tinggiMahasiswa[5],
      "bukuFavorit": bukuFavoritMahasiswa[5],
      "infotambahan": {
        "alamat": "Jl. Cempaka No. 61",
        "profesi": "Mahasiswa",
        "hobi": "Apa aja asal jangan main game",
      },
      "aktif": aktifMahasiswa,
    },
  ]; // Menutup coding input dan pengolahan tipe data sebelum perintah print/output tampilan

  // 3. Koding tampilan biodata mahasiswa
  // Declare fungsi tampilkanbiodata () untuk menjawab soal no. 3
  tampilkanBiodata(dataMahasiswa);
}

/// Pengaturan format tampilan fungsi biodata
void tampilkanBiodata(List<Map<String, dynamic>> data) {
  for (var mhs in data) {
    print("Nama: ${mhs['nama']}");
    print("Umur: ${mhs['umur']} tahun");
    print("Tinggi: ${mhs['tinggi']} cm");
    print("Buku Favorit: ${mhs['bukuFavorit']}");
    print("Alamat: ${mhs['infotambahan']['alamat']}");
    print("Status: ${mhs['aktif'] ? 'Aktif' : 'Tidak Aktif'}");
    print("Profesi: ${mhs['infotambahan']['profesi']}");
    print("Hobi: ${mhs['infotambahan']['hobi']}");
    print("\n");
  }
}
/* Note pribadi tugas 1: 

No. 3 (tampilan output) Dapat dijalankan juga seperti:
void tampilkanBiodata(List<Map<String, dynamic>> data) {
  for (Map<String, dynamic> mhs in data) { //Menggunakan Map<String, dynamic> dibanding menggunakan syntax var
    print("Nama: ${mhs['nama']}");
    print("Umur: ${mhs['umur']} tahun");
    print("Tinggi: ${mhs['tinggi']} cm");
    print("Buku Favorit: ${mhs['bukuFavorit']}");
    print("Alamat: ${mhs['infotambahan']['alamat']}");
    print("Status: ${mhs['aktif'] ? 'Aktif' : 'Tidak Aktif'}");
    print("Profesi: ${mhs['infotambahan']['profesi']}");
    print("Hobi: ${mhs['infotambahan']['hobi']}");
    print("\n"); 
  }
}

Syntax ${blabla['declare']} digunakan untuk memanggil tipe data dengan akurat
Syntax ${mhs['aktif'] ? 'Aktif' : 'Tidak Aktif'}") logika operator untuk tes nilai boolean

[ = berfungsi seperti rak sepatu, tempat untuk menambahkan objek dan mengurutkan objek
{ = berfungsi seperti kotak penyimpanan, tempat untuk menambahkan nilai/label/ info detil pada objek
\n = berfungsi membuat jarak antar objek agar lebih mudah dibaca
*/