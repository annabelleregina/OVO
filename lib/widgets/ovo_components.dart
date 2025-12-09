import 'package:flutter/material.dart';

class HeaderActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const HeaderActionButton({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: Colors.white, size: 24),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 11),
        ),
      ],
    );
  }
}

class CategoryTab extends StatelessWidget {
  final String text;
  final bool isSelected;

  const CategoryTab({super.key, required this.text, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: isSelected 
        ? const EdgeInsets.symmetric(horizontal: 16, vertical: 6)
        : const EdgeInsets.symmetric(vertical: 6),
      decoration: isSelected
          ? BoxDecoration(
              color: const Color(0xFFEDEAF4),
              borderRadius: BorderRadius.circular(20),
            )
          : null,
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? const Color(0xFF4C3494) : Colors.grey,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}

class MenuIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const MenuIcon({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.withOpacity(0.2)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              )
            ]
          ),
          child: Icon(icon, color: color, size: 28),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 11,
            color: Colors.black87,
            height: 1.2
          ),
        ),
      ],
    );
  }
}