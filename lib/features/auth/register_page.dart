import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('注册')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(decoration: const InputDecoration(labelText: '用户名')),
            const SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(labelText: '密码'),
            ),
            const SizedBox(height: 16),
            TextField(decoration: const InputDecoration(labelText: '显示名称')),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              child: const Text('注册'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('已有账号？登录'),
            ),
          ],
        ),
      ),
    );
  }
}
