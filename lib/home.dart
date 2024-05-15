import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 231, 255),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple[300],
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(0, 0),
              ),
            ],
            borderRadius: BorderRadius.circular(14),
          ),
          width: 200,
          height: 200,
          child: const Center(
            child: Text('This Is Art'),
          ),
        ),
      ),
    );
  }
}
