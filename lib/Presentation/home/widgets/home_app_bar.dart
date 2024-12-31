import 'package:flutter/material.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: ListTile(
        title: _buildGreetingWithUserName(context),
        subtitle: Text(
          HomeStrings.kLetsWatchTitle,
          style: GoogleFontsStyleLoader.textStyle(
            fontSize: 14,
            useAkatab: false,
            color: AppColors.kSecondaryTextColor,
          ),
        ),
      ),
      actions: [
        _buildProfilePicture(),
      ],
    );
  }

  Widget _buildGreetingWithUserName(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: HomeStrings.kHelloText,
            style: GoogleFontsStyleLoader.textStyle(
              fontSize: 20,
              useAkatab: false,
              fontWeight: FontWeight.bold,
            ),
          ),
          const TextSpan(text: '\t\t'),
          TextSpan(
            text: HomeStrings.kUserDemoName,
            style: GoogleFontsStyleLoader.textStyle(
              fontSize: 20,
              useAkatab: false,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfilePicture() {
    return Container(
      height: 100,
      width: 100,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            Color(0xFFFF008B), // Start color
            Color(0xFF00FFD3),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Image.asset(
          ImagesAssetsPaths.kUserProfileDemo,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
