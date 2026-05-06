void main() {
  //1. Declare tipe data dan isi data
  List<String> namaMahasiswa = [
    "John Doe",
    "Jane Doe",
    "Higuruma",
    "Denji",
    "Makima",
  ];
  List<int> nilaiUTS = [65, 65, 99, 15, 98];
  List<int> nilaiUAS = [70, 70, 100, 10, 100];
  List<int> Absenkehadiran = [16, 16, 9, 16, 16];
  int Totalkehadiran = 16;
  List<Map<String, dynamic>> dataMahasiswa = [
    {
      "nama": namaMahasiswa[0],
      "nilaiUTS": nilaiUTS[0],
      "nilaiUAS": nilaiUAS[0],
      "absen": Absenkehadiran[0],
    },
    {
      "nama": namaMahasiswa[1],
      "nilaiUTS": nilaiUTS[1],
      "nilaiUAS": nilaiUAS[1],
      "absen": Absenkehadiran[1],
    },
    {
      "nama": namaMahasiswa[2],
      "nilaiUTS": nilaiUTS[2],
      "nilaiUAS": nilaiUAS[2],
      "absen": Absenkehadiran[2],
    },
    {
      "nama": namaMahasiswa[3],
      "nilaiUTS": nilaiUTS[3],
      "nilaiUAS": nilaiUAS[3],
      "absen": Absenkehadiran[3],
    },
    {
      "nama": namaMahasiswa[4],
      "nilaiUTS": nilaiUTS[4],
      "nilaiUAS": nilaiUAS[4],
      "absen": Absenkehadiran[4],
    },
  ];
  //2. Memulai proses pengembangan output
  print("Laporan Hasil Penilaian Mahasiswa:");
  print("-" * 50);

  /// Menginput indikator kelulusan mahasiswa

  for (var mhs in dataMahasiswa) {
    double persentaseAbsen = (mhs['absen'] / Totalkehadiran) * 100;
    double nilaiRata =
        (mhs['nilaiUTS'] + mhs['nilaiUAS']) /
        2; // Rumus nilai akhir = nilai UTS + (nilai UAS / 2)
    bool lulusNilaiRata =
        nilaiRata >= 70; // Syarat kelulusan nilai akhir minimal 70
    bool lulusAbsen = persentaseAbsen >= 75.0; // Syarat absen minimal 75%
    bool lulusMinimal =
        (mhs['nilaiUTS'] >= 60 && mhs['nilaiUAS'] >= 60); // Tidak boleh < 60
    bool Lulus = lulusNilaiRata && lulusAbsen && lulusMinimal;

    //3. List menentukan rumus untuk boolean
    print("Nama        : ${mhs['nama']}");
    print("Nilai Akhir : ${nilaiRata}");
    print("Kehadiran   : ${persentaseAbsen}%");
    print("Status      : ${Lulus ? 'LULUS O' : 'TIDAK LULUS X'}");

    if (!Lulus) {
      List<String> alasan = [];
      if (!lulusNilaiRata) alasan.add("Nilai Rata-rata < 70");
      if (!lulusAbsen) alasan.add("Absen < 75%");
      if (!lulusMinimal) alasan.add("Komponen nilai < 60");
      if (!lulusNilaiRata) alasan.add("Nilai Rata-rata < 70");
      print("Keterangan  : ${alasan.join(', ')}");
    }
    print("-" * 50);
  }
}
