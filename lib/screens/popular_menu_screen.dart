import 'package:flutter/material.dart';

class PopularMenuScreen extends StatelessWidget {
  const PopularMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB),
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(context),
            const SizedBox(height: 16),
            _buildSearchBar(),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                children: [
                  _buildMenuItem(
                    image: 'assets/images/salad1.png',
                    title: 'Original Salad',
                    subtitle: 'Lovy Food',
                    price: '\$8',
                  ),
                  const SizedBox(height: 16),
                  _buildMenuItem(
                    image: 'assets/images/salad2.png',
                    title: 'Fresh Salad',
                    subtitle: 'Cloudy Resto',
                    price: '\$10',
                  ),
                  const SizedBox(height: 16),
                  _buildMenuItem(
                    image: 'assets/images/icecream.png',
                    title: 'Yummie Ice Cream',
                    subtitle: 'Circlo Resto',
                    price: '\$6',
                  ),
                  const SizedBox(height: 16),
                  _buildMenuItem(
                    image: 'assets/images/vegan.png',
                    title: 'Vegan Special',
                    subtitle: 'Haty Food',
                    price: '\$11',
                  ),
                  const SizedBox(height: 16),
                  _buildMenuItem(
                    image: 'assets/images/pasta.png',
                    title: 'Mixed Pasta',
                    subtitle: 'Recto Food',
                    price: '\$13',
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            _buildBottomNav(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: const Color(0xFFF43F5E).withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Color(0xFFF43F5E),
                size: 18,
              ),
            ),
          ),
          const SizedBox(width: 24),
          const Text(
            'Popular Menu',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: Color(0xFF09101D),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 45,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: const Color(0xFFF4F6F9),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Search',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF858C94),
                      ),
                    ),
                  ),
                  const Icon(Icons.search, color: Color(0xFF858C94), size: 20),
                ],
              ),
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: const Color(0xFFF43F5E).withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.filter_list,
              color: Color(0xFFF43F5E),
              size: 22,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required String image,
    required String title,
    required String subtitle,
    required String price,
  }) {
    return Container(
      height: 88,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF5A6CEA).withValues(alpha: 0.08),
            blurRadius: 50,
            offset: const Offset(12, 26),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
              width: 64,
              height: 64,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF09101D),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF858C94),
                  ),
                ),
              ],
            ),
          ),
          Text(
            price,
            style: const TextStyle(
              fontSize: 29,
              fontWeight: FontWeight.w600,
              color: Color(0xFFF43F5E),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNav() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: const Color(0xFFF4F6F9)),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF5A6CEA).withValues(alpha: 0.08),
            blurRadius: 50,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildNavItem(Icons.home, 'Home', isActive: true),
          _buildNavItem(Icons.shopping_bag, 'Order'),
          _buildNavItem(Icons.chat_bubble, 'Chat'),
          _buildNavItem(Icons.person, 'Profile'),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, {bool isActive = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: isActive
          ? BoxDecoration(
        color: const Color(0xFFF43F5E).withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
      )
          : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: Color(0xFFF43F5E),
            size: 22,
          ),
          if (isActive) ...[
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFFF43F5E),
              ),
            ),
          ],
        ],
      ),
    );
  }
}