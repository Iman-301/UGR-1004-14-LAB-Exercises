void main() {
  Map<String, int> shoppingCart = {};

  addItemToCart(shoppingCart, 'Apple', 5);
  addItemToCart(shoppingCart, 'Banana', 3);
  addItemToCart(shoppingCart, 'Orange', 2);

  print('Shopping Cart: $shoppingCart');

  double totalPrice = calculateTotalPrice(shoppingCart);
  print('Total Price: \$${totalPrice.toStringAsFixed(2)}');

  removeItemFromCart(shoppingCart, 'Banana');

  print('Updated Shopping Cart: $shoppingCart');

  totalPrice = calculateTotalPrice(shoppingCart);
  print('Updated Total Price: \$${totalPrice.toStringAsFixed(2)}');
}

void addItemToCart(Map<String, int> cart, String product, int quantity) {
  cart.putIfAbsent(product, () => 0);
    cart.update(product, (value) => value + quantity, ifAbsent: () => quantity);
  
}

void removeItemFromCart(Map<String, int> cart, String product) {
  cart.remove(product);
}

double calculateTotalPrice(Map<String, int> cart) {
  const Map<String, double> productPrices = {
    'Apple': 0.5,
    'Banana': 0.25,
    'Orange': 0.75,
  };

  double totalPrice = 0;
  cart.forEach((product, quantity) {
    if (productPrices.containsKey(product)) {
      double price = productPrices[product]!;
      totalPrice += price * quantity;
    }
  });

  return totalPrice;
}