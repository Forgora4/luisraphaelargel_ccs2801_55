import 'package:flutter/material.dart';

class Createpost extends StatelessWidget {
  final VoidCallback? onpostcreate;
  const Createpost({super.key, this.onpostcreate});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onpostcreate,
      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/profile/prof6.png"),
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "whats in your mind?",
          border: InputBorder.none,
        ),
      ),
      trailing: Icon(Icons.image),
    );
  }
}