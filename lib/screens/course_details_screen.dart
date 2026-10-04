import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              _buildHeader(context),
              const SizedBox(height: 24),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildCourseImage(),
                      const SizedBox(height: 24),
                      _buildBadges(),
                      const SizedBox(height: 24),
                      const Text(
                        '3D Design Basic',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF09101D),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'In this course you will learn how to build a space to a 3-dimensional product. There are 24 premium learning videos for you.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000000),
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 24),
                      _buildLessonsHeader(),
                      const SizedBox(height: 16),
                      _buildLessonCard(),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
              _buildEnrollButton(),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: const Color(0xFF304FFE).withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xFF304FFE),
              size: 18,
            ),
          ),
        ),
        const SizedBox(width: 20),
        const Text(
          '3D Design Basic',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
            color: Color(0xFF09101D),
          ),
        ),
      ],
    );
  }

  Widget _buildCourseImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        'assets/images/course_image.png',
        width: double.infinity,
        height: 240,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildBadges() {
    return Row(
      children: [
        _buildBadge(
          icon: Icons.groups,
          text: '4.569',
        ),
        const SizedBox(width: 12),
        _buildBadge(
          icon: Icons.star,
          text: '4.9',
        ),
        const SizedBox(width: 12),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
          decoration: BoxDecoration(
            color: const Color(0xFF304FFE),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Text(
            'Best Seller',
            style: TextStyle(
              fontSize: 13,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBadge({required IconData icon, required String text}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFF304FFE).withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: const Color(0xFF304FFE), size: 16),
          const SizedBox(width: 6),
          Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF304FFE),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLessonsHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '24 Lessons (20 hours)',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xFF2C3A4B),
          ),
        ),
        const Text(
          'See all',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF304FFE),
          ),
        ),
      ],
    );
  }

  Widget _buildLessonCard() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFF4F6F9)),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF5A6CEA).withValues(alpha: 0.08),
            blurRadius: 50,
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/lesson_thumb.png',
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Introduction to 3D',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF09101D),
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  '20 mins',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF858C94),
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.check_circle_outline,
            color: Color(0xFF304FFE),
            size: 28,
          ),
        ],
      ),
    );
  }

  Widget _buildEnrollButton() {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF304FFE),
            Color(0xFF6D5FFD),
          ],
        ),
      ),
      child: const Center(
        child: Text(
          'Enroll - \$24.99',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}