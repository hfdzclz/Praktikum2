import 'package:flutter/material.dart';

import 'lib/screens/about_screen.dart';
import '../widgets/action_buttons.dart';
import '../widgets/profile_info.dart';
import '../widgets/profile_header.dart';
import '../widgets/social_media_row.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            tooltip: 'About',
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(builder: (_) => const AboutScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: const ProfileHeader(
                      name: 'Hafidz Afrizal',
                      studentId: '26.21.1632',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: const ProfileInfo(
                  programStudi: 'S1 Informatika',
                  email: 'h.afrizal716@students.amikom.ac.id',
                  lokasi: 'Yogyakarta, Indonesia',
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ActionButtons(),
                    const SizedBox(height: 16),
                    const SocialMediaRow(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
