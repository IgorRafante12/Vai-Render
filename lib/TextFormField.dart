// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class TextFormField1 extends StatefulWidget {
  const TextFormField1({super.key});

  @override
  State<TextFormField1> createState() => _TextFormField1State();
}

class _TextFormField1State extends State<TextFormField1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        height: 50,
        child: TextFormField(
          decoration: InputDecoration(
            isDense: true,
            prefixIcon: Icon(Icons.search, size: 30, color: Colors.black),
            labelText: 'Procure aqui...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
