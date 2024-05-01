import 'package:flutter/material.dart';

class CustomSearchTextFiled extends StatelessWidget {
  const CustomSearchTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon:
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
      ),
    );
  }
}
