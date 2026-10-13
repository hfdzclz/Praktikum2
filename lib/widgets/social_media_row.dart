import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Tombol Instagram
        IconButton(
          icon: const Icon(Icons.camera_alt),
          onPressed: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Instagram')));
          },
        ),
        const SizedBox(width: 12),
        // Tombol LinkedIn
        IconButton(
          icon: const Icon(Icons.work),
          onPressed: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('LinkedIn')));
          },
        ),
        const SizedBox(width: 12),
        // Tombol GitHub
        IconButton(
          icon: const Icon(Icons.code),
          onPressed: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('GitHub')));
          },
        ),
      ],
    );
  }
}
