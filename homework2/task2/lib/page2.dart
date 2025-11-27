import 'package:flutter/material.dart';

class Towpage extends StatelessWidget {
  final String name;

  Towpage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tow Page'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Text(name),
      ),
    );
  }
}

class Towpage1 extends StatefulWidget {
  final String name;

  Towpage1({super.key, required this.name});

  @override
  State<Towpage1> createState() => _Towpage1State();
}

class _Towpage1State extends State<Towpage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tow Page 1'),
        backgroundColor: const Color.fromARGB(255, 99, 187, 78),
      ),
      body: Column(
        children: [
          Center(
            child: Text(widget.name),
          ),
          Text('data'),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 63, 174, 80),
            ),
            child: Text('Back'),
          ),
        ],
      ),
    );
  }
}