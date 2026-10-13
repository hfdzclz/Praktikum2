import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String studentId;
  final String photoAsset;

  const ProfileHeader({
    super.key,
    required this.name,
    required this.studentId,
    this.photoAsset = 'assets/images/hafidz.jpeg',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(radius: 60, backgroundImage: AssetImage(photoAsset)),
        const SizedBox(height: 16),
        Text(
          name,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          'NIM: $studentId',
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}
