# Rating Anime App
Program yang menampilkan sekilas detail anime untuk diberi rating ini menggunakan widget ListView.builder pada pada home page dan juga menggunakan widget SingleChilScrollView agar bisa discroll kebawah. Program ini dibuat dengan 6 file dengan format dart dan 1 folder. Untuk detail file dapat dilihat dibawah ini :

![image](https://github.com/willyanimrt/review_anime_app/assets/148356348/7612256c-6f2b-4fcd-9711-f1bc53ba948a)

# Models
Dari gambar diatas terlihat bahwa pada bagian models terdapat 1 file dengan nama "data.dart" yang digunakan sebagai untuk mengonversi data ke format Json.

# List Page
Pada file "list_page.dart" ini berfungsi sebagai home page atau halaman awal dari aplikasi ini yang berisi header, search bar, kategori/genre dan juga daftar anime populer maupun terbaru. Untuk tampilannya dapat dilihat digambar dibawah ini :

![image](https://github.com/willyanimrt/review_anime_app/assets/148356348/7cefa9af-e596-4c87-baf0-002b61122cf8)

# Kategori/Genre Page
Di bagian file "genre_page.dart" ini digunakan untuk menampilkan kategori/genre sesuai dengan yang dipilih dari kolom genre pada list page diatas. Detail terdapat pada gambar dibawah ini :

![image](https://github.com/willyanimrt/review_anime_app/assets/148356348/a81cd105-b85e-40af-bf52-cf0454cd93ae)

# Detail Page
Untuk bagian file "desc_page.dart" ini digunakan untuk menampilkan detail page dengan isi gambar, genre, rating bar dan deskripsi dan juga terdapat app bar icon untuk kembali ke halaman awal. Tampilan yang dimaksud yaitu sebagai berikut :

![image](https://github.com/willyanimrt/review_anime_app/assets/148356348/e5dda362-de46-4977-83d7-12a30fe8d733)

# File Penyimpan Data
Pada file "user.dart" ini saya gunakan untuk menyimpan semua data anime yang akan dipanggil pada program tersebut.

# Paket yang Digunakan
flutter_rating_bar: ^4.0.0 (https://pub.dev/packages/flutter_rating_bar)

# review_anime

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
