import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              child: Icon(Icons.person, size: 60),
            ),
            const SizedBox(height: 16),

            const Text(
              'rahman Seblay',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'online',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 24),
            
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('+62 852 25250122'),
              subtitle: Text('Mobile'),
            ),
            const ListTile(
              leading: Icon(Icons.alternate_email),
              title: Text('@rahmanseblay'),
              subtitle: Text('Username'),
            ),
          ],
        ),
      ),
    );
  }
}