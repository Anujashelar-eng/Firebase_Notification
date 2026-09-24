import 'package:flutter/material.dart';
import 'create_notification.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Admin Panel")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Create Notification"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const CreateNotificationScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}