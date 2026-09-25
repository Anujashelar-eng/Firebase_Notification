import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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



  final FirebaseFirestore firestore = FirebaseFirestore.instance;
//when the admin presses Send, a new document is created in Firestore.
  Future<void> sendNotification() async {
    try {
      print("Button Clicked");

      await FirebaseFirestore.instance
          .collection("notifications")
          .add({
        "title": titleController.text.trim(),
        "body": bodyController.text.trim(),
        "createdAt": FieldValue.serverTimestamp(),
      });

      print("Firestore Success");

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Saved")),
      );
    } catch (e) {
      print("Firestore Error: $e");
    }
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