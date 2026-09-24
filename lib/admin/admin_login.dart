import 'package:flutter/material.dart';
import 'admin_home.dart';
import 'user_home.dart';

class AdminLoginScreen extends StatefulWidget {
  const AdminLoginScreen({super.key});

  @override
  State<AdminLoginScreen> createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    String email = emailController.text.trim();

    if (email == "admin@gmail.com") {
      // Admin
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AdminHomeScreen(),
        ),
      );
    } else {
      // User
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const UserHomeScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: "Email",
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: login,
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}