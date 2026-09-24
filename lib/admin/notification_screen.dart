import 'package:flutter/material.dart';
import '../models/notification_model.dart';

class NotificationScreen extends StatelessWidget {

  const NotificationScreen({super.key});

  final List<NotificationModel> notifications = const [
    NotificationModel(
      title: "Festival Event",
      body: "Ganesh Utsav starts at 6 PM",
    ),
    NotificationModel(
      title: "Job Update",
      body: "Python Developer Opening",
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {

          return ListTile(
            leading: const Icon(Icons.notifications),
            title: Text(notifications[index].title),
            subtitle: Text(notifications[index].body),
          );
        },
      ),
    );
  }
}