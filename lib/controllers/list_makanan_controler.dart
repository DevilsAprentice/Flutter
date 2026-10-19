
import 'package:get/get.dart';
import 'package:test_app/models/makanan_model.dart';

class ListMakananController extends GetxController {
  final listMakanan = <MakananModel>[
  MakananModel(
    namaMakanan: 'Nasi Goreng',
    harga: '15000',
    deskripsi: 'Nasi goreng dengan telur.',
    review: 'Rasanya gurih.',
    rating: 4.8,
    gambar: 'assets/images/nasi_goreng.jpg',
  ),
  MakananModel(
    namaMakanan: 'Mie Ayam',
    harga: '12000',
    deskripsi: 'Mie dengan topping ayam.',
    review: 'Mienya lembut.',
    rating: 4.6,
    gambar: 'assets/images/mie_ayam.jpg',
  ),
  MakananModel(
    namaMakanan: 'Bakso',
    harga: '13000',
    deskripsi: 'Bakso sapi dengan kuah hangat dan mi.',
    review: 'Kuahnya gurih dan cocok dimakan saat hangat.',
    rating: 4.7,
    gambar: 'assets/images/bakso.jpg',
  ),
];
}