// Pastikan data_belanjaan.dart sudah didefinisikan dengan benar
class Belanjaan {
  final String gambar;
  final String nama;
  final String deskripsi;
  final double rating;
  final String harga;
  final String hargaDiskon;
  final List<String> ukuran;
  final String warna;
  final String terjual;

  Belanjaan(
      {required this.gambar,
      required this.nama,
      required this.deskripsi,
      required this.rating,
      required this.harga,
      required this.hargaDiskon,
      required this.ukuran,
      required this.warna,
      required this.terjual});
}

// Contoh data barang belanjaan
final List<Belanjaan> barangBelanjaan = [
  Belanjaan(
      gambar: 'assets/image/sepatu.png',
      nama: 'Jordan low',
      deskripsi: 'Tampilkan gaya ikonik dengan Air Jordan Low, sepatu yang membawa sejarah dan performa dalam satu desain yang tak lekang oleh waktu. Terinspirasi oleh model asli yang dirilis pada tahun 1985, sepatu ini hadir dengan kombinasi warna klasik dan material premium yang menawarkan kenyamanan maksimal serta tampilan yang stylish.',
      harga: 'Rp.900.000,00',
      hargaDiskon: 'Rp.1.000.000,00',
      rating: 4.5,
      ukuran: ['40', '41', '42', '43', '44'],
      warna: 'Hitam',
  terjual: '100'),
  Belanjaan(
      gambar: 'assets/image/hoodie.png',
      nama: 'Hoodie',
      deskripsi: 'Tingkatkan gaya santai Anda dengan hoodie ini, yang dirancang untuk memberikan kenyamanan maksimal tanpa mengorbankan penampilan. Terbuat dari bahan fleece berkualitas tinggi, hoodie ini lembut di kulit dan hangat, sempurna untuk cuaca dingin atau saat bersantai di rumah.',
      harga: 'Rp.89.000,00',
      hargaDiskon: 'Rp.100.000,00',
      rating: 4.1,
      ukuran: ['42', '43'],
  warna: 'Abu-abu',
  terjual: '300'),
  // Tambahkan lebih banyak item jika diperlukan
];
