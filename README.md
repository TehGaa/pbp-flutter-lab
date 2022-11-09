# counter_7

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Stateless widget merupakan widget yang apabila telah dibuat, state dari widget tersebut tidak dapat berubah. Stateless widget digunakan ketika tidak dibutuhkan dependensi data yang berubah-ubah, seperti Text, IconButton, dll.

Stateful widget merupakan widget yang apabila telah dibuat, state dari widget tersebut dapat diubah-ubah. Stateful widget digunakan untuk membuat widget yang membutuhkan dependensi data, seperti CheckBox, RadioButton, dll.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
1. Scaffold
    Fungsi dari Scaffold adalah memberikan wadah dari banyak widget terutama pada halaman utama.
2. Text
    Fungsi dari Text adalah membuat dan menampilkan objek berupa tulisan
3. Visibility
    Fungsi dari Visibility adalah membuat kontrol visibilitas atas sebuah widget
4. FloatingActionButton
    Fungsi dari FloatingActionButton adalah membuat dan menampilkan tombol dengan sifat __hover__.
5. Icon
    Fungsi dari Icon adalah untuk membuat dan menampilkan icon.
6. Row
    Fungsi dari Row adalah untuk membuat widget-widget berada pada satu baris yang sama (horizontal)
7. Column
    Fungsi dari Column adalah untuk membuat widget-widget berada pada satu kolom yang sama (vertikal)
8. Center
    Fungsi dari Center adalah menyediakan layout dari widget dengan center alignment
9. AppBar
    Fungsi dari AppBar adalah membuat sebuah bar yang dapat diisikan widget-widget lain
10. TextStyle
    Fungsi dari TextStyle adalah memberikan style bagi suatu Text widget
11. MyApp
    Fungsi dari MyApp adalah membuat dasar dari aplikasi flutter
12. MyHomePage
    Fungsi dari MyHomePage adalah membuat tampilan dari aplikasi yang didasari oleh MyApp

## Apa fungsi dari ```setState()```? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi dari setState adalah menyediakan state-state yang berubah kemudian melakukan trigger bagi aplikasi bahwa ada state yang telah berubah sehingga state diminta untuk melakukan build kembali.

Variabel yang terdampak dengan fungsi setState adalah variabel yang diletakkan pada function yang di-reference oleh setState. Pada tugas ini, variabel yang terdampak adalah ```_counter```.

##  Jelaskan perbedaan antara const dengan final.
const dan final merupakan keyword untuk menyatakan bahwa nilai dari suatu variable tidak akan berubah. Perbedaannya adalah penggunaan const digunakan apabila kita ingin menginisialisasi variabel yang tidak dapat diubah saat compile time, sedangkan final digunakan ketika kita ingin menginisialisasi variabel yang tidak dapat diubah pada runtime.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat sebuah program Flutter baru dengan nama counter_7.
    Membuat aplikasi flutter yang baru dengan perintah ```flutter create <app_name>```
2. Mengubah tampilan program menjadi seperti berikut.
    Menyunting ```main.dart``` dengan menambahkan widget Row pada atribut floatingActionButton sehingga kita dapat menambahkan lebih dari 1 button. Kemudian, mengubah text default menjadi ganjil/genap beserta warnanya sesuai dengan kondisi variabel _counter.
3. Mengimplementasikan logika berikut pada program.
    - Tombol + menambahkan angka sebanyak satu satuan.
        Menambahkan reference method _incrementCounter yang melakukan increment counter pada atribut onPressed FloatingActionButton tambah.
    - Tombol - mengurangi angka sebanyak satu satuan. Apabila counter bernilai 0, maka tombol - tidak memiliki efek apapun pada counter.
        Menambahkan reference method _decrementCounter yang melakukan decrement counter pada atribut onPressed FloatingActionButton kurang. Pada method tersebut, variabel _counter hanya akan berubah ketika variabel _counter belum sama dengan 0.
    - Apabila counter bernilai ganjil, maka teks indikator berubah menjadi "GANJIL" dengan warna biru.
        Pada atribut color TextStyle widget dilakukan ternary operator yang mengeluarkan biru ketika variabel _counter bernilai ganjil.
    - Apabila counter bernilai genap, maka teks indikator berubah menjadi "GENAP" dengan warna merah.
        Pada atribut color TextStyle widget dilakukan ternary operator yang mengeluarkan merah ketika variabel _counter bernilai genap.
    - Angka 0 dianggap sebagai angka genap.
        Hal tersebut termasuk ke dalam kondisi ```_counter % 2 == 0``` yang mana ```true``` ketika genap dan ```false``` ketika ganjil.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
