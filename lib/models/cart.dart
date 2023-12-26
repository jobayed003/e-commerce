import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // List of shes fo rsale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak',
      price: '243',
      imagePath: 'assets/images/freak.jpg',
      description: 'The forward-thinking desing of his lates signature shoes.',
    ),
    Shoe(
      name: 'KD Treys',
      price: '220',
      imagePath: 'assets/images/kdtrey.jpg',
      description:
          'You\'ve got the hops and the speed-lace up in shoes that enhance you',
    ),
    Shoe(
      name: 'Air Jordans',
      price: '243',
      imagePath: 'assets/images/kyrie.jpg',
      description:
          'A secure midfoot strap is suited for scoring binges and defensive play',
    ),
    Shoe(
      name: 'Kyrie 6',
      price: '243',
      imagePath: 'assets/images/shoes.jpg',
      description:
          'Bouncy cushining is paired with soft yet supportive foam for response.',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> get cart {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
