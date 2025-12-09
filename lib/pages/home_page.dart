import 'package:flutter/material.dart';
import '../widgets/ovo_header.dart'; 
import '../widgets/ovo_menu.dart';  

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 150,
            decoration: const BoxDecoration(
              color: Color(0xFF4C3494),
            ),
          ),

          const SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(height: 16),

                  OvoHeader(),
                  
                  SizedBox(height: 16),

                  OvoMenu(),
                  
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF4C3494),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.percent), label: "Deals"),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner, size: 30), label: "Scan"),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: "Finance"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}