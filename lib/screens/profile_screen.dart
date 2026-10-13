import 'package:flutter/material.dart';

import 'lib/screens/about_screen.dart';
import '../widgets/profile_info.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/hafidz.jpeg'),
              ),
              const SizedBox(height: 24),
              const ProfileInfo(
                name: 'Hafidz Afrizal',
                nim: '26.21.1632',
                programStudi: 'S1 Informatika',
                email: 'h.afrizal716@students.amikom.ac.id',
                lokasi: 'Yogyakarta, Indonesia',
              ),
              const SizedBox(height: 24),
              // Tombol aksi
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                    label: const Text('Edit'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.share),
                    label: const Text('Bagikan'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const SocialMediaRow(),
            ],
          ),
        ),
      ),
    );
  }
}
