import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  final String name;
  final String job;
  final String email;
  final String phone;


  @override
  Widget build(BuildContext context) { // This is the required concrete implementation
    return const Center(
      child: Text(''),
    );
  }

  CardPage({
   required this.name,
   required this.job,
    required this.email,
    required this.phone,

  });
}

