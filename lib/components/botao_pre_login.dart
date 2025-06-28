import 'package:app_santander/views/Login.dart';
import 'package:flutter/material.dart';

class BotaoPreLogin extends StatelessWidget {
  IconData icon;
  String text;
  BotaoPreLogin(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
    },
      child: Card(
        child: Container(
          // padding: EdgeInsets.all(35),
          width: MediaQuery.of(context).size.width *0.3,
          height: 100,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: const Color.fromARGB(255, 236, 9, 0),
                ), 
              SizedBox(height: 10,),
              Text(text, 
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
              ),
              ],
            ),),
      ),
    );
  }
}