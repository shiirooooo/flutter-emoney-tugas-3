# E-Money - Tugas Pertemuan 3

Aplikasi Flutter untuk latihan membuat menu dan berpindah halaman dengan `Navigator.push()`.

Susunan menu:

| Baris 1 | Baris 2 | Baris 3 |
| --- | --- | --- |
| Top Up | Pulsa | Air |
| Transfer | Paket Data | Internet |
| Tarik Tunai | Listrik | BPJS |

`lib/main.dart` mengatur tema dan halaman awal. Tampilan sembilan menu ditulis langsung di `lib/menu_page.dart` dengan `Column`, `Row`, `Container`, `Icon`, `Text`, dan `SizedBox`. `Expanded` membagi lebar kolom dan `InkWell` menangani ketukan. Tidak ada widget atau class `MenuItem`.

Setiap menu memakai `Navigator.push()` dan `MaterialPageRoute` untuk membuka class halaman tersendiri di `lib/pages/`. Halaman tujuan berisi AppBar, ikon, dan nama halaman. Tombol kembali pada AppBar mengembalikan pengguna ke menu.

Saldo Rp 0 hanya untuk tampilan. Tugas ini mencakup tampilan dan navigasi, belum memproses transaksi.

## Menjalankan

Dari folder proyek:

```sh
flutter pub get
flutter run
```

Untuk mencoba di Chrome:

```sh
flutter run -d chrome
```

## Pemeriksaan

```sh
flutter analyze
flutter test
```

Tes memeriksa kesembilan tujuan navigasi, tombol kembali, serta menu pada layar kecil dengan ukuran tulisan diperbesar.
