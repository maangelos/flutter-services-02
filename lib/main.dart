import 'package:cadastro/screens/formularioCadastro.dart';
import 'package:cadastro/screens/listaUsuarios.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

final title = 'Cadastro/Visualização Usuários';
const _txtBtnVisualizar = 'Visualizar';
const _txtBtnCadastrar = 'Cadastrar';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: title, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: RaisedButton(
                    child: Text(_txtBtnCadastrar, style: TextStyle(fontSize: 18)), onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => FormularioCadastro()));
                  },
                  textColor: Colors.blue,
                  color: Colors.white
                  ),
                ),
                Center(
                  child: RaisedButton(
                    child: Text(_txtBtnVisualizar, style: TextStyle(fontSize: 18)), onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> ListaUsuarios()));
                  },
                  textColor: Colors.blue,
                  color: Colors.white
                  ),
                )
              ],
            )));
  }
}