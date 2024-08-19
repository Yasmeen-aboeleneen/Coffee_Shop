import 'package:coffee_shop/Core/Constants/images.dart';

class Coffee {
  final String image;
  final String name;
  final String type;
  final double rate;
  final int review;
  final String description;
  final double price;
  Coffee({
    required this.image,
    required this.name,
    required this.type,
    required this.rate,
    required this.review,
    required this.description,
    required this.price,
  });
}

final listGridCoffee = [
  Coffee(
    image: Images.coffee2,
    name: 'Caffee Mocha',
    type: 'Deep Foam',
    rate: 4,
    review: 230,
    description:
        'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo',
    price: 4.53,
  ),
  Coffee(
    image: Images.coffee2,
    name: 'Flat White',
    type: 'Espresso',
    rate: 3.5,
    review: 230,
    description:
        'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo',
    price: 3.53,
  ),
  Coffee(
    image: Images.coffee3,
    name: 'Mocha Fusi',
    type: 'Ice/Hot',
    rate: 4.8,
    review: 230,
    description:
        'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo',
    price: 7.53,
  ),
  Coffee(
    image: Images.coffee4,
    name: 'Caffe Panna',
    type: 'Ice/Hot',
    rate: 4.3,
    review: 230,
    description:
        'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo',
    price: 5.53,
  ),
];
