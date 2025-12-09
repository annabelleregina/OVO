import 'package:flutter/material.dart';
import 'ovo_components.dart'; 

class OvoMenu extends StatelessWidget {
  const OvoMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Row(
            children: [
              const Icon(Icons.local_florist, size: 40, color: Colors.orange),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Mau bunga 5%? Yuk, upgrade ke OVO Nabung! Mudah, cepet, dan cuan!",
                      style: TextStyle(fontSize: 13, height: 1.3),
                    ),
                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF4C3494),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                          minimumSize: const Size(0, 32),
                        ),
                        child: const Text(
                          "Cek OVO Nabung",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),

        const SizedBox(height: 20),

        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CategoryTab(text: "Favorit", isSelected: true),
              SizedBox(width: 16),
              CategoryTab(text: "Pilihan Lain", isSelected: false),
              SizedBox(width: 16),
              CategoryTab(text: "Grab", isSelected: false),
              SizedBox(width: 16),
              CategoryTab(text: "Finansial", isSelected: false),
            ],
          ),
        ),

        const SizedBox(height: 16),

        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          childAspectRatio: 0.8,
          mainAxisSpacing: 16,
          crossAxisSpacing: 8,
          children: const [
            MenuIcon(icon: Icons.savings, label: "Nabung by\nSuperbank", color: Colors.purple),
            MenuIcon(icon: Icons.monetization_on_outlined, label: "Pinjaman", color: Colors.purple),
            MenuIcon(icon: Icons.credit_card, label: "Uang\nElektronik", color: Colors.orange),
            MenuIcon(icon: Icons.receipt_long, label: "Angsuran\nKredit", color: Colors.pink),
            MenuIcon(icon: Icons.phone_android, label: "Pulsa/Paket\nData", color: Colors.blue),
            MenuIcon(icon: Icons.electric_bolt, label: "PLN", color: Colors.amber),
            MenuIcon(icon: Icons.water_drop, label: "Air PDAM", color: Colors.lightBlue),
            MenuIcon(icon: Icons.tv, label: "Internet &\nTV Kabel", color: Colors.orangeAccent),
          ],
        ),
      ],
    );
  }
}