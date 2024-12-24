import 'package:flutter/material.dart';
import '../widgets/bottomBar.dart';  // Import the BottomBar widget
import '../views/checkout.dart';  

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
List<CartItem> cartItems = [
  CartItem(
    image: 'assets/images/product9.jpg',  // Update to asset path
    title: "LIPSY LONDON Green Poplin",
    description: "Ruched Front",
    price: 390.36,
    quantity: 1,
  ),
  CartItem(
    image: 'assets/images/product10.jpg',  // Update to asset path
    title: "LIPSY LONDON Green Poplin",
    description: "Ruched Front",
    price: 150.20,
    quantity: 2,
  ),
];


  double get totalPrice {
    return cartItems.fold(0, (sum, item) => sum + (item.price * item.quantity));
  }

  void increaseQuantity(int index) {
    setState(() {
      cartItems[index].quantity++;
    });
  }

  void decreaseQuantity(int index) {
    setState(() {
      if (cartItems[index].quantity > 1) {
        cartItems[index].quantity--;
      }
    });
  }

  void removeItem(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
  backgroundColor: Colors.white,
  title: Text(
    "Shopping Cart",
    style: TextStyle(
      color: Colors.deepPurple,
      fontWeight: FontWeight.bold, // Added bold font weight
    ),
  ),
  elevation: 0,
  actions: [
    IconButton(
      icon: Icon(Icons.clear_all),
      onPressed: () {
        setState(() {
          cartItems.clear();
        });
      },
    ),
  ],
),

      body: cartItems.isEmpty
          ? Center(child: Text("Your cart is empty!", style: TextStyle(fontSize: 18)))
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Colors.grey.withOpacity(0.3)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       ClipRRect(
  borderRadius: BorderRadius.circular(12),
  child: Image.asset(
    item.image,
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  ),
),

                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                              SizedBox(height: 4),
                              Text(item.description, style: TextStyle(fontSize: 14, color: Colors.grey)),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove, color: Colors.deepPurple),
                                    onPressed: () => decreaseQuantity(index),
                                  ),
                                  Text(item.quantity.toString(), style: TextStyle(fontSize: 16)),
                                  IconButton(
                                    icon: Icon(Icons.add, color: Colors.deepPurple),
                                    onPressed: () => increaseQuantity(index),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                          Text("\$${(item.price * item.quantity).toStringAsFixed(1)}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),

                            IconButton(
                              icon: Icon(Icons.delete, color: Colors.red),
                              onPressed: () => removeItem(index),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
      bottomSheet: cartItems.isEmpty
          ? SizedBox.shrink()
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
          Text("Total: \$${totalPrice.toStringAsFixed(1)}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

                  ElevatedButton(
  onPressed: () {
    // Navigate to CheckoutPage
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CheckoutPage()),
    );
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.deepPurple,
    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
  child: Text("Checkout", style: TextStyle(color: Colors.white)),
)

                ],
              ),
            ),
                bottomNavigationBar: BottomBar(),
    );
  }
}

class CartItem {
  final String image;
  final String title;
  final String description;
  final double price;
  int quantity;

  CartItem({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    this.quantity = 1,
  });
}
