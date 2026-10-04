import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AtlantisScreen extends StatelessWidget {
  const AtlantisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF6F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeaderSection(context),
            const SizedBox(height: 10),
            const Text(
              'Secrets of Atlantis',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Color(0xFF111111),
                fontFamily: 'Montserrat',
              ),
            ),
            const SizedBox(height: 12),
            _buildFollowButton(),
            const SizedBox(height: 20),
            _buildInfoCard(),
            const SizedBox(height: 20),
            _buildInviteCard(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderSection(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 380,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFF01C3FF),
            image: DecorationImage(
              image: AssetImage('assets/images/whale_background.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: ClipPath(
            clipper: OvalClipper(),
            child: Container(
              height: 80,
              color: const Color(0xFFFAF6F5),
            ),
          ),
        ),
        Positioned(
          top: 44,
          left: 20,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.7),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              width: 104,
              height: 104,
              decoration: BoxDecoration(
                color: const Color(0xFFFE7A15),
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFFFAF6F5),
                  width: 10,
                ),
              ),
              child: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 52,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFollowButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFFE7A15), width: 1.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text(
        'Follow',
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          color: Color(0xFFFE7A15),
          fontFamily: 'Montserrat',
        ),
      ),
    );
  }

  Widget _buildInfoCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF403285),
        borderRadius: BorderRadius.circular(36),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[300],
                    image: const DecorationImage(
                      image: AssetImage('assets/images/codin_avatar.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Codin',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          const SizedBox(height: 4),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFF262044),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Text(
                              'Host',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.5,
                              height: 1.5,
                              fontFamily: 'Montserrat',
                            ),
                            children: [
                              TextSpan(
                                text:
                                'The Secrets of Atlantis podcast is designed for all fantasy enthusiasts, everything from debunking underwat... ',
                              ),
                              TextSpan(
                                text: 'see more',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xFF262044),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        '4.8',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(Icons.star, color: Colors.grey, size: 16),
                      const SizedBox(width: 4),
                      Text(
                        '(10)',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xFF262044),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Fantasy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Spacer(),
                const Icon(Icons.notifications_none,
                    color: Colors.white, size: 28),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: const BoxDecoration(
              color: Color(0xFF1D0F5A),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 160,
                  height: 40,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        child: _buildAvatar('assets/images/avatar1.png'),
                      ),
                      Positioned(
                        left: 28,
                        child: _buildAvatar('assets/images/avatar2.png'),
                      ),
                      Positioned(
                        left: 56,
                        child: _buildAvatar('assets/images/avatar3.png'),
                      ),
                      Positioned(
                        left: 84,
                        child: _buildAvatar('assets/images/avatar4.png'),
                      ),
                      Positioned(
                        left: 112,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFFFE7A15),
                          ),
                          child: const Center(
                            child: Text(
                              '+10',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    const Icon(Icons.graphic_eq,
                        color: Color(0xFFF24E1E), size: 24),
                    const SizedBox(width: 6),
                    const Text(
                      'Live',
                      style: TextStyle(
                        color: Color(0xFFF24E1E),
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAvatar(String imagePath) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
        border: Border.all(color: Colors.black, width: 1),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildInviteCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      decoration: BoxDecoration(
        color: const Color(0xFFF8D910),
        borderRadius: BorderRadius.circular(53),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/images/characters.svg',
            width: 150,
            height: 120,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'Invite your',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                  ),
                ),
                Text(
                  'friends to join',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.share, color: Colors.black, size: 28),
        ],
      ),
    );
  }
}

class OvalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.5);
    path.quadraticBezierTo(
      size.width * 0.5,
      -size.height * 0.5,
      size.width,
      size.height * 0.5,
    );
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}