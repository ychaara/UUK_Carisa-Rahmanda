import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String username;
  const ProfilePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Halo $username', style: const TextStyle(fontSize: 24)),
    );
  }
}
