import 'package:flutter/material.dart';
import '../views/cart.dart'; // Import your CartPage
class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int quantity = 1;

  void increaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decreaseQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/images/productdetail.jpg'), // Replace with your asset path
    fit: BoxFit.cover,
  ),
),

            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Add to Cart Button
         
                  // Product Title
                  Text(
                    "LIPSY LONDON Green Poplin Ruched Front Dress",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  // Ratings and Reviews
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      Icon(Icons.star_half, color: Colors.amber, size: 20),
                      Icon(Icons.star_border, color: Colors.amber, size: 20),
                      SizedBox(width: 8),
                      Text(
                        "4.5 (120 Reviews)",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Product Price
                  Row(
                    children: [
                      Text(
                        "\$390.36",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "\$650.62",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "40% off",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Quantity Selector
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Quantity:",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 16),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: decreaseQuantity,
                              icon: Icon(Icons.remove),
                            ),
                            Text(
                              "$quantity",
                              style: TextStyle(fontSize: 16),
                            ),
                            IconButton(
                              onPressed: increaseQuantity,
                              icon: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Product Description
                  Text(
                    "This beautiful ruched-front dress by LIPSY LONDON is perfect for any occasion. Made with high-quality poplin fabric, it features a flattering silhouette, comfortable fit, and trendy design.",
                    style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                  ),
                  SizedBox(height: 16),
                  // Specifications
                  Text(
                    "Specifications:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "• Material: Poplin\n• Color: Green\n• Fit: Regular Fit\n• Available Sizes: S, M, L, XL\n• Suitable for casual and formal occasions",
                    style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                  ),
                  SizedBox(height: 16),
                        Center(
  child: ElevatedButton(
    onPressed: () {
      // Navigate to the CartPage when the button is pressed
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CartPage()),
      );
    },
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      backgroundColor: Colors.deepPurple,
    ),
    child: Text(
      "Add to Cart",
      style: TextStyle(fontSize: 18, color: Colors.white),
    ),
  ),
),
                  SizedBox(height: 16),
                  // Customer Reviews
                  Text(
                    "Customer Reviews:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: Icon(Icons.person, color: Colors.grey),
                        ),
                        title: Text("John Doe"),
                        subtitle: Text("Great quality and fit! Highly recommend."),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 20),
                            Icon(Icons.star, color: Colors.amber, size: 20),
                            Icon(Icons.star, color: Colors.amber, size: 20),
                            Icon(Icons.star, color: Colors.amber, size: 20),
                            Icon(Icons.star_border, color: Colors.amber, size: 20),
                          ],
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: Icon(Icons.person, color: Colors.grey),
                        ),
                        title: Text("Jane Smith"),
                        subtitle: Text("Looks exactly like the picture. Love it!"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 20),
                            Icon(Icons.star, color: Colors.amber, size: 20),
                            Icon(Icons.star, color: Colors.amber, size: 20),
                            Icon(Icons.star_half, color: Colors.amber, size: 20),
                            Icon(Icons.star_border, color: Colors.amber, size: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
