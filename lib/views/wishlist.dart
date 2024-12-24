import 'package:flutter/material.dart';
import '../widgets/bottomBar.dart'; 


class WishlistPage extends StatelessWidget {
  // Sample list of wishlist items
  final List<Map<String, String>> wishlistItems = [
    {
    'image': 'assets/images/product7.jpg',  // Update to asset path
      'title': 'LIPSY LONDON',
      'description': 'Green Poplin Ruched Front',
    },
    {
       'image': 'assets/images/product10.jpg',  // Update to asset path
      'title': 'Mountain Warehouse',
      'description': 'Thermal Jacket for Winter',
    },
    {
       'image': 'assets/images/product6.jpg',  // Update to asset path
      'title': 'Nike Air Max',
      'description': 'Running Shoes - Men\'s',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Wishlist",
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: wishlistItems.isEmpty
            ? Center(
                child: Text(
                  "Your wishlist is empty.",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),
              )
            : ListView.builder(
                itemCount: wishlistItems.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          wishlistItems[index]['image']!,
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        wishlistItems[index]['title']!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.deepPurple,
                        ),
                      ),
                      subtitle: Text(
                        wishlistItems[index]['description']!,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.deepPurple,
                        ),
                        onPressed: () {
                          // Handle removing item from wishlist
                        },
                      ),
                    ),
                  );
                },
              ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
