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