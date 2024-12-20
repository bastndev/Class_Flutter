// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_class/models/product.dart';
part 'products_provider.g.dart';

List<Product> allProducts = [
  const Product(id: '1', title: 'Groovy Shorts', price: 12, image: 'assets/products/shorts.png'),
  const Product(id: '2', title: 'Karate Kit', price: 34, image: 'assets/products/karate.png'),
  const Product(id: '3', title: 'Denim Jeans', price: 54, image: 'assets/products/jeans.png'),
  const Product(id: '4', title: 'Red Backpack', price: 14, image: 'assets/products/backpack.png'),
  const Product(id: '5', title: 'Drum & Sticks', price: 29, image: 'assets/products/drum.png'),
  const Product(id: '6', title: 'Blue Suitcase', price: 44, image: 'assets/products/suitcase.png'),
  const Product(id: '7', title: 'Roller Skates', price: 52, image: 'assets/products/skates.png'),
  const Product(id: '8', title: 'Electric Guitar', price: 79, image: 'assets/products/guitar.png'),
];

// final  reducedProductsProvider = Provider((ref){
//   return allProducts.where((p)=> p.price < 50).toList();
// });

// generate Provider
@riverpod
List<Product> products(ref){
  return allProducts ;
}
@riverpod
List<Product> reducedProducts(ref){
  return allProducts.where((p)=> p.price < 50).toList();
}