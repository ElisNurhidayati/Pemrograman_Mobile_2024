# RESTFUL API - PERTEMUAN 14

## Praktikum 1, Designing an HTTP client and getting data
Sebagian besar aplikasi seluler mengandalkan data yang berasal dari sumber eksternal.
Pikirkan aplikasi untuk membaca buku, menonton film, berbagi gambar dengan teman,
membaca berita, atau menulis email: semua aplikasi ini menggunakan data yang diambil dari
sumber eksternal. Ketika sebuah aplikasi menggunakan data eksternal, biasanya, ada layanan
backend yang menyediakan data tersebut untuk aplikasi: layanan web atau API web. Yang
terjadi adalah aplikasi Anda (frontend atau klien) terhubung ke layanan web melalui HTTP dan
meminta sejumlah data. Layanan backend kemudian merespons dengan mengirimkan data ke
aplikasi, biasanya dalam format JSON atau XML.
Untuk praktikum kali ini, kita akan membuat aplikasi yang membaca dan menulis data dari
layanan web. Karena membuat API web berada di luar cakupan buku ini, kita akan
menggunakan layanan yang tersedia, yang disebut Wire Mock Cloud, yang akan
mensimulasikan perilaku layanan web yang sebenarnya, tetapi akan sangat mudah disiapkan
dan digunakan. 

![hasil praktikum 2](/assets/praktikum1.png)

## Praktikum 2. POST-ing data
Dalam praktikum ini, Anda akan mempelajari cara melakukan tindakan POST pada layanan
web. Hal ini berguna ketika Anda menyambungkan ke layanan web yang tidak hanya menyediakan data, tetapi juga memungkinkan Anda untuk mengubah informasi yang tersimpan di sisi server. Biasanya, Anda harus menyediakan beberapa bentuk autentikasi ke layanan, tetapi untuk praktikum ini, karena kita menggunakan layanan Mock API, hal ini tidak diperlukan.

![hasil praktikum 2](/assets/praktikum2.gif)