import 'package:flutter/material.dart';

class CreateNotificationScreen extends StatefulWidget {
  const CreateNotificationScreen({super.key});

  @override
  State<CreateNotificationScreen> createState() =>
      _CreateNotificationScreenState();
}

class _CreateNotificationScreenState
    extends State<CreateNotificationScreen> {

  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  void sendNotification() {

    String title = titleController.text;
    String body = bodyController.text;

    print(title);
    print(body);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Notification Sent"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Notification"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: "Notification Title",
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: bodyController,
              maxLines: 4,
              decoration: const InputDecoration(
                labelText: "Message",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: sendNotification,
              child: const Text("Send"),
            ),
          ],
        ),
      ),
    );
  }
}