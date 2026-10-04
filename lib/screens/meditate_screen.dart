import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MeditateScreen extends StatelessWidget {
  const MeditateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeaderImage(),
                const SizedBox(height: 16),
                const Text(
                  'Peter Mach',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1E1E1E),
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Mind Deep Relax',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF000000),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF1E1E1E),
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 20),
                _buildPlayButton(),
                const SizedBox(height: 20),
                _buildSessionItem(
                  iconColor: const Color(0xFF2F80ED),
                  title: 'Sweet Memories',
                  subtitle: 'December 29 Pre-Launch',
                ),
                const SizedBox(height: 8),
                _buildSessionItem(
                  iconColor: const Color(0xFF039EA2),
                  title: 'A Day Dream',
                  subtitle: 'December 29 Pre-Launch',
                ),
                const SizedBox(height: 8),
                _buildSessionItem(
                  iconColor: const Color(0xFFF09235),
                  title: 'Mind Explore',
                  subtitle: 'December 29 Pre-Launch',
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderImage() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: SizedBox(
          width: double.infinity,
          height: 231,
          child: SvgPicture.asset(
            'assets/images/meditate_header.svg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildPlayButton() {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFF039EA2),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 24,
          ),
          const SizedBox(width: 8),
          const Text(
            'Play Next Session',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSessionItem({
    required Color iconColor,
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFEBEBEB)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: iconColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 24,
            ),
          ),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E1E1E),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF1E1E1E),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              _buildDot(),
              const SizedBox(width: 5),
              _buildDot(),
              const SizedBox(width: 5),
              _buildDot(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDot() {
    return Container(
      width: 6,
      height: 6,
      decoration: const BoxDecoration(
        color: Color(0xFFD9D9D9),
        shape: BoxShape.circle,
      ),
    );
  }
}