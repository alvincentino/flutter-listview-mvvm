import 'dart:developer';
import 'package:flutter/material.dart';

class ItemPage extends StatefulWidget {
  String? userName;
  String? email;

  ItemPage({super.key, this.userName, this.email});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  final _userNameController = TextEditingController();
  final _emailController = TextEditingController();

  setValue() {
    log("Getting default values");
    _userNameController.text = widget.userName ?? "";
    _emailController.text = widget.email ?? "";
  }

  @override
  void initState() {
    super.initState();
    setValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'I T E M',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _userNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Username',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                log("username: ${_userNameController.text}");
                log("email: ${_emailController.text}");
              },
              child: const Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
