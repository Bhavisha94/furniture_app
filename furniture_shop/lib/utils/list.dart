import 'package:furniture_shop/model/cart.dart';
import 'package:furniture_shop/model/category.dart';
import 'package:furniture_shop/model/popular.dart';

List<CategoryModel> list = [
  CategoryModel(img: 'all', text: 'All'),
  CategoryModel(img: 'chair', text: 'Chair'),
  CategoryModel(img: 'lamp', text: 'Lamp'),
  CategoryModel(img: 'sofa', text: 'Sofa')
];

List<PopularModel> popularList = [
  PopularModel(
      image: 'popular1',
      name: 'Velvet Chair',
      desc: 'Curabitur commodo turpis id placerat.',
      rate: '4.9'),
  PopularModel(
      image: 'popular2',
      name: 'Rocking Chair',
      desc: 'Mauris euismod arcu id orci fringilla.',
      rate: '4.7')
];

List<CartModel> cartList = [
  CartModel(image: 'cart1', name: 'Brown Velvet Chair', price: '130', qty: 4),
  CartModel(
      image: 'cart2', name: 'White Modern Armchair', price: '145', qty: 2),
  CartModel(image: 'cart3', name: 'Wooden Coffee Table', price: '60', qty: 1)
];

List<String> paymentMethods = ['card', 'visa', 'paypal', 'gpay', 'applepay'];

List<String> itemList = [
  'All',
  'Living Room',
  'Bedroom',
  'Dining Room',
  'Kitchen'
];

List<PopularModel> recommList = [
  PopularModel(image: '1', name: 'Stylish Chair', desc: '170', rate: '4.8'),
  PopularModel(image: '2', name: 'Modern Table', desc: '75', rate: '4.9'),
  PopularModel(image: '3', name: 'Wooden Console', desc: '240', rate: '4.7'),
  PopularModel(image: '4', name: 'Brown Armchair', desc: '210', rate: '4.9'),
  PopularModel(image: '1', name: 'Stylish Chair', desc: '170', rate: '4.8'),
  PopularModel(image: '2', name: 'Modern Table', desc: '75', rate: '4.9'),
  PopularModel(image: '3', name: 'Wooden Console', desc: '240', rate: '4.7'),
  PopularModel(image: '4', name: 'Brown Armchair', desc: '210', rate: '4.9')
];
