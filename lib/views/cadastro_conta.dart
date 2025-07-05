import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class CadastroConta extends StatefulWidget {
  const CadastroConta({super.key});

  @override
  State<CadastroConta> createState() => _CadastroContaState();
}

class _CadastroContaState extends State<CadastroConta> {
  TextEditingController nomeController = TextEditingController(),
  TextEditingController emailController = TextEditingController(),
  TextEditingController cpfController = TextEditingController(), 
  TextEditingController telefoneController = TextEditingController(),
  TextEditingController senhaController = TextEditingController(),


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
      TextField(
        controller: nomeController,
        decoration: InputDecoration(hintText: "Nome")),
      TextField
      controller: emailController,
      (decoration: InputDecoration(hintText: "Email"),),
      TextField(decoration: InputDecoration(hintText: "Senha"),),
      TextField(decoration: InputDecoration(hintText: "Telefone"),),
      TextField(decoration: InputDecoration(hintText: "Cpf"),),
      ElevatedButton(onPressed: () async{
        await htt.post(Uri.parse("tps://10.0.2.15/api/usuarios"),
        headers:{
          "Accept":"application/json"
          "Content-Type": "application/json"
        }
        body:jsonEncode({
          {
            "nome": nomeController.text,
            "cpf": CpfController.text,
            "email": EmailController.text,
            "senha": senhaController.text,
            "telefone": telefoneController.text
}
        })).then((http.Response response){});
      },
       child: Text("Cadastrar"))
      ],),);
  }
}
