# Tutorial 2 - Introduction to Game Engine

- Nama    : Akhyar Rasyid Asy syifa
- Kelas   : Game Development - A
- NPM     : 2306241682

---

### Latihan: Playtest

#### Apa saja pesan *log* yang dicetak pada panel **Output**?
Saat aplikasi pertama kali dijalankan, panel output akan menampilkan pesan `Platform initialized`. Setelah itu, ketika pesawat menyentuh atau berada di batas atas layar, log akan mencetak pesan `Reached objective!`.

#### Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan *log* yang dicetak pada panel **Output**?
Panel output akan kembali menampilkan pesan `Reached objective!`.

#### Buka *scene* `MainLevel` dengan tampilan *workspace* 2D. Apakah lokasi *scene* `ObjectiveArea` memiliki kaitan dengan pesan *log* yang dicetak pada panel **Output** pada percobaan sebelumnya?
Iya, berkaitan. Lokasi `ObjectiveArea` berada di bagian atas area permainan. Pesan log tersebut muncul karena fungsi `_on_ObjectiveArea_body_entered` pada script mendeteksi ketika objek `BlueShip` memasuki area tabrakan (*CollisionShape2D*) milik `ObjectiveArea`.

---

### Latihan: Memanipulasi Node dan Scene

#### *Scene* `BlueShip` dan `StonePlatform` sama-sama memiliki sebuah *child node* bertipe `Sprite`. Apa fungsi dari *node* bertipe `Sprite`?
Node `Sprite2D` berfungsi untuk menampilkan gambar atau tekstur pada suatu objek agar memiliki wujud visual di dalam game. Tanpa node ini, objek hanya akan berupa data teknis atau fisik yang tidak terlihat oleh pemain.

#### *Root node* dari *scene* `BlueShip` dan `StonePlatform` menggunakan tipe yang berbeda. `BlueShip` menggunakan tipe `RigidBody2D`, sedangkan `StonePlatform` menggunakan tipe `StaticBody2D`. Apa perbedaan dari masing-masing tipe *node*?
* **`RigidBody2D`**: Digunakan untuk objek yang memerlukan simulasi fisika penuh, seperti pengaruh gravitasi, massa, dan gaya benturan.
* **`StaticBody2D`**: Digunakan untuk objek yang sifatnya tetap atau tidak bergerak (seperti lantai atau dinding) sehingga tidak terpengaruh oleh gaya fisika, namun tetap bisa dideteksi sebagai penghalang oleh objek lain.

#### Ubah nilai atribut `Mass` pada tipe `RigidBody2D` secara bebas di *scene* `BlueShip`, lalu coba jalankan *scene* `MainLevel`. Apa yang terjadi?
Perubahan nilai `Mass` tidak memberikan perbedaan visual yang terlihat pada kecepatan jatuh pesawat. Hal ini terjadi karena dalam simulasi fisika (seperti hukum jatuh bebas di dunia nyata), massa objek tidak mempengaruhi percepatan gravitasi. Pengaruh massa baru akan terasa jika pesawat berinteraksi dengan objek dinamis lainnya melalui tumbukan.

#### Ubah nilai atribut `Disabled` pada tipe `CollisionShape2D` di *scene* `StonePlatform`, lalu coba jalankan *scene* `MainLevel`. Apa yang terjadi?
Pesawat akan jatuh menembus platform tersebut. Hal ini terjadi karena platform tidak lagi memiliki bentuk tabrakan (*collision*) yang aktif, sehingga sistem fisika tidak mendeteksi adanya benturan antara pesawat dan platform.

#### Pada *scene* `MainLevel`, coba manipulasi atribut `Position`, `Rotation`, dan `Scale` milik *node* `BlueShip` secara bebas. Apa yang terjadi pada visualisasi `BlueShip` di Viewport?
Perubahan pada `Position` akan memindahkan koordinat pesawat, `Rotation` akan memutar orientasi objek, dan `Scale` akan mengubah ukuran fisik maupun visual pesawat di dalam viewport.

#### Pada *scene* `MainLevel`, perhatikan nilai atribut `Position` *node* `PlatformBlue`, `StonePlatform`, dan `StonePlatform2`. Mengapa nilai `Position` *node* `StonePlatform` dan `StonePlatform2` tidak sesuai dengan posisinya di dalam *scene* (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
Hal ini dikarenakan `StonePlatform` dan `StonePlatform2` adalah *child* dari node `PlatformBlue`. Nilai posisi yang muncul di Inspector merupakan **koordinat lokal** yang dihitung relatif terhadap posisi induknya, bukan terhadap titik nol (0,0) global pada scene tersebut.
