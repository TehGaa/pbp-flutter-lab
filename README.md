# counter_7

## TUGAS 7
## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Stateless widget merupakan widget yang apabila telah dibuat, state dari widget tersebut tidak dapat berubah. Stateless widget digunakan ketika tidak dibutuhkan dependensi data yang berubah-ubah, seperti Text, IconButton, dll.

Stateful widget merupakan widget yang apabila telah dibuat, state dari widget tersebut dapat diubah-ubah. Stateful widget digunakan untuk membuat widget yang membutuhkan dependensi data, seperti CheckBox, RadioButton, dll.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
1. Scaffold <br>
    Fungsi dari Scaffold adalah memberikan wadah dari banyak widget terutama pada halaman utama.
2. Text <br>
    Fungsi dari Text adalah membuat dan menampilkan objek berupa tulisan
3. Visibility <br>
    Fungsi dari Visibility adalah membuat kontrol visibilitas atas sebuah widget
4. FloatingActionButton <br>
    Fungsi dari FloatingActionButton adalah membuat dan menampilkan tombol dengan sifat __hover__.
5. Icon <br>
    Fungsi dari Icon adalah untuk membuat dan menampilkan icon.
6. Row <br>
    Fungsi dari Row adalah untuk membuat widget-widget berada pada satu baris yang sama (horizontal)
7. Column <br>
    Fungsi dari Column adalah untuk membuat widget-widget berada pada satu kolom yang sama (vertikal)
8. Center <br>
    Fungsi dari Center adalah menyediakan layout dari widget dengan center alignment
9. AppBar <br>
    Fungsi dari AppBar adalah membuat sebuah bar yang dapat diisikan widget-widget lain
10. TextStyle <br>
    Fungsi dari TextStyle adalah memberikan style bagi suatu Text widget
11. MyApp <br>
    Fungsi dari MyApp adalah membuat dasar dari aplikasi flutter
12. MyHomePage <br>
    Fungsi dari MyHomePage adalah membuat tampilan dari aplikasi yang didasari oleh MyApp

## Apa fungsi dari ```setState()```? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi dari setState adalah menyediakan state-state yang berubah kemudian melakukan trigger bagi aplikasi bahwa ada state yang telah berubah sehingga state diminta untuk melakukan build kembali.

Variabel yang terdampak dengan fungsi setState adalah variabel yang diletakkan pada function yang di-reference oleh setState. Pada tugas ini, variabel yang terdampak adalah ```_counter```.

##  Jelaskan perbedaan antara const dengan final.
const dan final merupakan keyword untuk menyatakan bahwa nilai dari suatu variable tidak akan berubah. Perbedaannya adalah penggunaan const digunakan apabila kita ingin menginisialisasi variabel yang tidak dapat diubah saat compile time, sedangkan final digunakan ketika kita ingin menginisialisasi variabel yang tidak dapat diubah pada runtime.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat sebuah program Flutter baru dengan nama counter_7.
    Membuat aplikasi flutter yang baru dengan perintah ```flutter create counter_7```
2. Mengubah tampilan program menjadi seperti berikut.
    Menyunting ```main.dart``` dengan menambahkan widget Row pada atribut floatingActionButton sehingga kita dapat menambahkan lebih dari 1 button. Kemudian, mengubah text default menjadi ganjil/genap beserta warnanya sesuai dengan kondisi variabel _counter.
3. Mengimplementasikan logika berikut pada program.
    - Tombol + menambahkan angka sebanyak satu satuan. <br>
        Menambahkan reference method _incrementCounter yang melakukan increment counter pada atribut onPressed FloatingActionButton tambah.
    - Tombol - mengurangi angka sebanyak satu satuan. Apabila counter bernilai 0, maka tombol - tidak memiliki efek apapun pada counter. <br>
        Menambahkan reference method _decrementCounter yang melakukan decrement counter pada atribut onPressed FloatingActionButton kurang. Pada method tersebut, variabel _counter hanya akan berubah ketika variabel _counter belum sama dengan 0.
    - Apabila counter bernilai ganjil, maka teks indikator berubah menjadi "GANJIL" dengan warna biru. <br>
        Pada atribut color TextStyle widget dilakukan ternary operator yang mengeluarkan biru ketika variabel _counter bernilai ganjil.
    - Apabila counter bernilai genap, maka teks indikator berubah menjadi "GENAP" dengan warna merah. <br>
        Pada atribut color TextStyle widget dilakukan ternary operator yang mengeluarkan merah ketika variabel _counter bernilai genap.
    - Angka 0 dianggap sebagai angka genap. <br>
        Hal tersebut termasuk ke dalam kondisi ```_counter % 2 == 0``` yang mana ```true``` ketika genap dan ```false``` ketika ganjil.

## TUGAS 8
## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement
```Navigator.push``` berguna untuk membuat sebuah route baru yang diletakkan di top of stack, sedangkan ```Navigator.pushReplacement``` berguna untuk membuat sebuah route baru yang menggantikan top of stack. Perbedaan jelas dapat terlihat ketika pembuatan route yang menggunakan ```push``` dapat kembali ke halaman sebelumnya menggunakan ```pop```, sedangkan ```pushReplacement``` tidak.

##  Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
1. Scaffold <br>
    Fungsi dari Scaffold adalah memberikan wadah dari banyak widget terutama pada halaman utama.
2. Text <br>
    Fungsi dari Text adalah membuat dan menampilkan objek berupa tulisan
3. FloatingActionButton <br>
    Fungsi dari FloatingActionButton adalah membuat dan menampilkan tombol dengan sifat __hover__.
4. Column <br>
    Fungsi dari Column adalah untuk membuat widget-widget berada pada satu kolom yang sama (vertikal)
5. Center <br>
    Fungsi dari Center adalah menyediakan layout dari widget dengan center alignment
6. AppBar <br>
    Fungsi dari AppBar adalah membuat sebuah bar yang dapat diisikan widget-widget lain
7. TextStyle <br>
    Fungsi dari TextStyle adalah memberikan style bagi suatu Text widget
8. MyApp <br>
    Fungsi dari MyApp adalah membuat dasar dari aplikasi flutter
9. Padding <br>
    Fungsi dari Padding adalah untuk membuat aturan padding bagi sebuah widget yaitu child
10. TextFormField <br>
    Fungsi dari TextFormField adalah untuk membuat form yang diisikan text
11. TextButton <br>
    Fungsi dari TextButton adalah untuk membuat sebuah button yang simpel
12. Card <br>
    Fungsi dari Card adalah untuk membentuk objek card

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
1. onPressed <br>
    Event yang terjadi ketika sebuah button ditekan.
2. onChanged <br>
    Event yang terjadi ketika sebuah perubahan dilakukan (misal, pengisian form).
3. onSaved <br>
    Event yang terjadi ketika sebuah perubahan disimpan (misal, pengisia form).
4. onPointerDown <br>
    Event yang terjadi ketika sebuah button pada pointer (misal, mouse) ditekan.

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Navigator bekerja dalam mengatur route menggunakan stack. Route yang ditampilkan merupakan route yang berada pada top of stack. User dapat menggunakan method push untuk memasukkan route baru ke dalam stack dan pop untuk kembali ke route sebelumnya (route yang berada pada satu level di bawah).

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
### Menambahkan drawer/hamburger menu pada app yang telah dibuat sebeumnya.
Widget Drawer ditambahkan pada atribut drawer yang ada di widget scaffold. Hal tersebut dilakukan di semua file dart, seperti main.dart, form.dart, dan data.dart agar terdapat route untuk ke masing-masing halaman.

### Menambahkan tiga tombol navigasi pada drawer/hamburger.
#### Navigasi pertama untuk ke halaman counter.
Menambahkan sebuah widget ListTile yang ketika ditekan akan menjalankan Navigator.pushReplacement dengan builder pada MaterialPageRoute yaitu MyHomePage.

#### Navigasi kedua untuk ke halaman form.
Menambahkan sebuah widget ListTile yang ketika ditekan akan menjalankan Navigator.pushReplacement dengan builder pada MaterialPageRoute yaitu MyFormPage.

#### Navigasi ketiga untuk ke halaman yang menampilkan data budget yang telah di-input melalui form.
Menambahkan sebuah widget ListTile yang ketika ditekan akan menjalankan Navigator.pushReplacement dengan builder pada MaterialPageRoute yaitu MyDataPage.

### Menambahkan halaman form
Menambahkan StateFul widget dengan state yang mengembalikan widget Scaffold. Isi dari halaman form akan dimasukkan TextFormField, Drawer, DropdownButton, dan TextButton.

#### Menambahkan elemen input dengan tipe data String berupa judul budget.
Memasukkan widget TextFormField agar dapat menampilkan field form untuk diisi pengguna. Title dari form dibuat menjadi ```judul```.

#### Menambahkan elemen input dengan tipe data String berupa nominal budget.
Memasukkan widget TextFormField agar dapat menampilkan field form untuk diisi pengguna. Title dari form dibuat menjadi ```nominal```. Keyboard type dari form ini dibuat menjadi number.

#### Menambahkan elemen dropdown yang berisi tipe budget dengan pilihan pemasukan dan pengeluaran.
Memasukkan widget ListTile dengan trailing widget DropdownButton yang memiliki list items berupa ```['Pemasukan', 'Pengeluaran']```.

#### Menambahkan button untuk menyimpan budget.
Memasukkan widget TextButton yang memiliki event listener ```onPressed``` pada floatingActionButton. Event listener tersebut dimasukkan fungsi yang dapat menyimpan semua input user ke dalam sebuah static list bernama data.

### Menambahkan halaman data budget
Menambahkan StateFul widget dengan state yang mengembalikan widget Scaffold. Isi dari halaman data akan dimasukkan Card, Drawer, dan Text widget.

#### Menampilkan semua judul, nominal, dan tipe budget yang telah ditambahkan pada form.
Menambahkan widget Card sebanyak panjang list data. Card yang ditambahkan memiliki child berupa Column. Kemudian, menambahkan Text widget pada children yang ada di Column widget dengan judul yang telah dimasukkan user. Terakhir, menambahkan Row widget dengan isi berupa Text widget nominal dan tipe budget ke children dari Column.

## Tugas 9

### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Kita dapat melakukan pengambilan data JSON tanpa membuat model. Hal tersebut tidak dapat dikatakan lebih baik daripada membuat model terlebih dahulu karena pengerjaan akan menjadi lebih rumit dengan banyak akses list multidimensi. 

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
1. Scaffold <br>
    Fungsi dari Scaffold adalah memberikan wadah dari banyak widget terutama pada halaman utama.
2. Text <br>
    Fungsi dari Text adalah membuat dan menampilkan objek berupa tulisan
3. Column <br>
    Fungsi dari Column adalah untuk membuat widget-widget berada pada satu kolom yang sama (vertikal)
4. Center <br>
    Fungsi dari Center adalah menyediakan layout dari widget dengan center alignment
5. AppBar <br>
    Fungsi dari AppBar adalah membuat sebuah bar yang dapat diisikan widget-widget lain
6. TextStyle <br>
    Fungsi dari TextStyle adalah memberikan style bagi suatu Text widget
7. MyApp <br>
    Fungsi dari MyApp adalah membuat dasar dari aplikasi flutter
8. Table <br>
    Fungsi dari Table adalah untuk mendefinisikan pembuatan table pada suatu halaman
9. TableRow <br>
    Fungsi dari TableRow adalah untuk membuat baris-baris dari table

### Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
Pengambilan data dari json dilakukan dengan mengizinkan flutter untuk dapat mengakses internet terlebih dahulu. Kemudian, melakukan request kepada suatu web untuk mengambil data json. Data json yang telah didapatkan akan di-decode sehingga terbentuk json key-value pair.
Kemudian, melakukan pembuatan model sesuai dengan data json yang didapat. Objek-objek dari model yang telah dibuat kemudian akan diakses pada widget-widget seperti Text untuk menampilkan atribut-atribut dari model tersebut.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

#### Menambahkan tombol navigasi pada drawer/hamburger untuk ke halaman mywatchlist.
Pada bagian drawer, saya menambahkan satu buah ListTile widget yang ketika ditekan akan dilakukan ```Navigator.pushReplacement``` ke page mywatchlist.

#### Membuat satu file dart yang berisi model mywatchlist.
Membuat file dart baru dengan nama ```mywatchlist_model.dart``` dengan isi berupa atribut-atribut dari data json yang ingin diambil. 

#### Menambahkan halaman mywatchlist yang berisi semua watch list yang ada pada endpoint JSON di Django yang telah kamu deploy ke Heroku sebelumnya (Tugas 3). Pada bagian ini, kamu cukup menampilkan judul dari setiap mywatchlist yang ada.  
Penambahan watch list diawali dengan penambahan FutureBuilder dengan future nya berupa pemanggilan function yang dapat melakukan request bertipe GET ke data json di Heroku. Setelah itu, akan dimunculkan data-data dari json di Heroku yang telah diubah menjadi objek-objek model Mywatchlist. Cara dimunculkannya adalah dengan pembuatan ListView yang berisi ListTile dengan atribut title berupa judul dari setiap watch list.

#### Membuat navigasi dari setiap judul watch list ke halaman detail
Pada setiap ListTile di ListView akan diimplementasikan atribut onTap nya agar melakukan fungsi yang melakukan Navigator.pushReplacement ke page Detail yang disisipkan data-data Jdari model Mywatchlist.

#### Menambahkan halaman detail untuk setiap mywatchlist yang ada pada daftar tersebut. Halaman ini menampilkan judul, release date, rating, review, dan status (sudah ditonton/belum).
Membuat satu file dart baru bernama Detail dengan StatefulWidget yang mengambil data-data berupa title, watched, releaseDate, rating, dan review. Kemudian akan ditampilkan data-data tersebut menggunakan widget Table.

#### Menambahkan tombol untuk kembali ke daftar mywatchlist
Membuat sebuah ElevatedButton pada floatingactionbutton dengan fungsi onPressed nya menuju ke halaman mywatchlist.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
