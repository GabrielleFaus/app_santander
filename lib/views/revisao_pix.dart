import 'package:flutter/material.dart';

class RevisaoPix extends StatefulWidget {
  const RevisaoPix({super.key});

  @override
  State<RevisaoPix> createState() => _RevisaoPixState();
}

class _RevisaoPixState extends State<RevisaoPix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 236, 9, 0),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: Text(
          "Revisão",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        centerTitle: true,
      ),
      
    );
  }
}
