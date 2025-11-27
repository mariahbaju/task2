import 'package:flutter/material.dart';
import 'page2.dart';

class Textfild extends StatefulWidget {
  Textfild({super.key});

  @override
  State<Textfild> createState() => _TextfildState();
}

class _TextfildState extends State<Textfild> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

  void _login() {
    setState(() {
      _controller2.text = _controller1.text;
    });
  }

  void _Navgitor() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Towpage(
          name: _controller1.text,
        ),
      ),
    );
  }

  void _Navgitor1() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Towpage1(
          name: _controller1.text,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: const Color.fromARGB(255, 185, 221, 42),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: 'Enter the Name',
              hintText: 'ahmed',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            controller: _controller1,
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: 'the Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            controller: _controller2,
            readOnly: true,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 61, 164, 64),
            ),
            onPressed: _login,
            child: Text('Submit'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 54, 211, 98),
            ),
            onPressed: _Navgitor,
            child: Text('Navgitor'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 37, 206, 85),
            ),
            onPressed: _Navgitor1,
            child: Text('Navgitor1'),
          ),
        ],
      ),
    );
  }
}