# Program Input & Pencarian Data Mahasiswa

## Biodata Mahasiswa
| Keterangan | Data |
|-------------|------|
| **Nama** | Nurul Zikra Salzabilah |
| **NPM** | 07352311170 |
| **Mata Kuliah** | Pemrograman Mobile |
| **Kelas** | 5IF1 |

---

## Deskripsi Program
Program ini merupakan aplikasi **berbasis console menggunakan bahasa Dart**, yang berfungsi untuk **mengelola data mahasiswa dan dosen pembimbing akademik (PA)**.

Fitur utama dari program ini:
1. **Input Data Dosen**  
   Menyimpan informasi dosen berupa NIDN, nama, dan prodi.
2. **Input Data Mahasiswa**  
   Menyimpan data mahasiswa (NPM, nama, jurusan, kelas, angkatan) dan memilih dosen pembimbing (PA) dari daftar dosen yang sudah ada.
3. **Tampilkan Semua Mahasiswa**  
   Menampilkan seluruh data mahasiswa beserta nama dosen pembimbingnya.
4. **Cari Mahasiswa**  
   Mencari data mahasiswa berdasarkan **nama, NPM, atau jurusan**, dan menampilkan detail lengkapnya bersama PA.

Program ini dibuat untuk latihan dasar penggunaan **class, objek, list, dan input/output** dalam bahasa Dart.

---

## Struktur Program
Program ini menggunakan dua class utama:

### Class `Dosen`
Menyimpan data:
- `nidn`
- `nama`
- `prodi`

### Class `Mahasiswa`
Menyimpan data:
- `npm`
- `nama`
- `jurusan`
- `kelas`
- `angkatan`
- `pa` *(objek Dosen sebagai pembimbing akademik)*

Data disimpan sementara dalam **List**:
- `List<Dosen>` → daftar dosen  
- `List<Mahasiswa>` → daftar mahasiswa  

Fungsi utama:
- `tambahDosen()` → Input data dosen  
- `tambahMahasiswa()` → Input data mahasiswa dan pilih PA  
- `tampilkanData()` → Tampilkan semua mahasiswa  
- `cariMahasiswa()` → Cari data mahasiswa  
- `main()` → Menjalankan menu utama

---

## Contoh Menu Program
=== MENU UTAMA ===
1. Input Data Dosen
2. Input Data Mahasiswa
3. Tampilkan Semua Mahasiswa
4. Cari Mahasiswa
5. Keluar
---

## Cara Menjalankan Program

1. Pastikan **Dart SDK** sudah terpasang.  
   Unduh dari: [https://dart.dev/get-dart](https://dart.dev/get-dart)
2. Simpan file program dengan nama:
3. Buka terminal atau CMD di folder tempat file disimpan.
4. Jalankan perintah berikut:
```bash
dart run data_mahasiswa.dart
5. Ikuti menu untuk:
- Input data dosen terlebih dahulu
- Input data mahasiswa dan pilih PA
- Tampilkan semua data
- Cari mahasiswa berdasarkan nama/NPM/jurusan


