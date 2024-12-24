import 'package:flutter/material.dart';
import '../views/cart.dart'; // Import your CartPage
import '../views/public_dashboard.dart';
import '../views/account.dart';
import '../views/wishlist.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.deepPurple,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Shop",
        ),
   
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_border),
          label: "Wishlist",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label: "Cart",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Account",
        ),
      ],
      onTap: (index) {
        // Handle the navigation logic
        switch (index) {
         
               case 1: // "Cart" tab
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WishlistPage()), // Redirect to CartPage
            );
            break;
          case 2: // "Cart" tab
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartPage()), // Redirect to CartPage
            );
            break;
              case 3: // "Cart" tab
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AccountPage()), // Redirect to CartPage
            );
            break;
              case 0: // "Cart" tab
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PublicDashboard()), // Redirect to CartPage
            );
            break;
          // Add more cases for other tabs if needed
          default:
            // Handle other tabs
            break;
        }
      },
    );

  }
}
