import 'dart:io';

class Dosen {
  String nidn;
  String nama;
  String prodi;

  Dosen(this.nidn, this.nama, this.prodi);
}

class Mahasiswa {
  String npm;
  String nama;
  String jurusan;
  String kelas;
  String angkatan;
  Dosen pa;

  Mahasiswa(this.npm, this.nama, this.jurusan, this.kelas, this.angkatan, this.pa);
}

// List untuk menyimpan data
List<Dosen> daftarDosen = [];
List<Mahasiswa> daftarMahasiswa = [];

void tambahDosen() {
  print("\n=== Input Data Dosen ===");
  stdout.write("Masukkan NIDN: ");
  String nidn = stdin.readLineSync()!;
  stdout.write("Masukkan Nama Dosen: ");
  String nama = stdin.readLineSync()!;
  stdout.write("Masukkan Prodi: ");
  String prodi = stdin.readLineSync()!;

  daftarDosen.add(Dosen(nidn, nama, prodi));
  print("✅ Data dosen berhasil ditambahkan!\n");
}

void tambahMahasiswa() {
  if (daftarDosen.isEmpty) {
    print("⚠️ Belum ada data dosen. Silakan input data dosen dulu!");
    return;
  }

  print("\n=== Input Data Mahasiswa ===");
  stdout.write("Masukkan NPM: ");
  String npm = stdin.readLineSync()!;
  stdout.write("Masukkan Nama Mahasiswa: ");
  String nama = stdin.readLineSync()!;
  stdout.write("Masukkan Jurusan: ");
  String jurusan = stdin.readLineSync()!;
  stdout.write("Masukkan Kelas: ");
  String kelas = stdin.readLineSync()!;
  stdout.write("Masukkan Angkatan: ");
  String angkatan = stdin.readLineSync()!;

  print("\nPilih Dosen Pembimbing Akademik (PA):");
  for (int i = 0; i < daftarDosen.length; i++) {
    print("${i + 1}. ${daftarDosen[i].nama} (${daftarDosen[i].prodi})");
  }

  stdout.write("Masukkan nomor pilihan PA: ");
  int? pilihan = int.tryParse(stdin.readLineSync()!);

  if (pilihan == null || pilihan < 1 || pilihan > daftarDosen.length) {
    print("❌ Pilihan tidak valid!");
    return;
  }

  Dosen pa = daftarDosen[pilihan - 1];
  daftarMahasiswa.add(Mahasiswa(npm, nama, jurusan, kelas, angkatan, pa));
  print("✅ Data mahasiswa berhasil ditambahkan!\n");
}

void tampilkanData() {
  print("\n=== Daftar Mahasiswa ===");
  if (daftarMahasiswa.isEmpty) {
    print("Belum ada data mahasiswa.");
    return;
  }

  for (var m in daftarMahasiswa) {
    print("\nNPM       : ${m.npm}");
    print("Nama      : ${m.nama}");
    print("Jurusan   : ${m.jurusan}");
    print("Kelas     : ${m.kelas}");
    print("Angkatan  : ${m.angkatan}");
    print("PA        : ${m.pa.nama}");
  }
}

void cariMahasiswa() {
  print("\n=== Cari Data Mahasiswa ===");
  stdout.write("Masukkan nama / NPM / jurusan untuk dicari: ");
  String key = stdin.readLineSync()!.toLowerCase();

  var hasil = daftarMahasiswa.where((m) =>
      m.nama.toLowerCase().contains(key) ||
      m.npm.toLowerCase().contains(key) ||
      m.jurusan.toLowerCase().contains(key)).toList();

  if (hasil.isEmpty) {
    print("❌ Tidak ditemukan data mahasiswa yang sesuai.");
  } else {
    print("\nDitemukan ${hasil.length} hasil:");
    for (var m in hasil) {
      print("\nNPM       : ${m.npm}");
      print("Nama      : ${m.nama}");
      print("Jurusan   : ${m.jurusan}");
      print("Kelas     : ${m.kelas}");
      print("Angkatan  : ${m.angkatan}");
      print("PA        : ${m.pa.nama}");
    }
  }
}

void main() {
  while (true) {
    print("\n=== MENU UTAMA ===");
    print("1. Input Data Dosen");
    print("2. Input Data Mahasiswa");
    print("3. Tampilkan Semua Mahasiswa");
    print("4. Cari Mahasiswa");
    print("5. Keluar");

    stdout.write("Pilih menu (1-5): ");
    String? pilihan = stdin.readLineSync();

    switch (pilihan) {
      case '1':
        tambahDosen();
        break;
      case '2':
        tambahMahasiswa();
        break;
      case '3':
        tampilkanData();
        break;
      case '4':
        cariMahasiswa();
        break;
      case '5':
        print("Terima kasih! Program selesai.");
        return;
      default:
        print("Pilihan tidak valid, coba lagi!");
    }
  }
}
