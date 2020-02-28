import 'package:cadastro/albumUsuario.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'listaUsuarios.dart';

const _rotuloCampoNome = 'Nome';
const _rotuloCampoCidade = 'Cidade';
const _tituloAppBar = 'Cadastrando novo(a) usuário(a)';
const _txtBtnConfirmar = 'Confirmar';

class FormularioCadastro extends StatefulWidget {
  @override
  _FormularioCadastroState createState() => _FormularioCadastroState();
}

class _FormularioCadastroState extends State<FormularioCadastro> {
  final TextEditingController _controllerCampoNome =
      new TextEditingController();
  final TextEditingController _controllerCampoCidade =
      new TextEditingController();

  String _usuarioNome;
  String _usuarioCidade;

  @override
  _CadastroPageState() {
    _controllerCampoNome.addListener(_usuarioNomeListen);
    _controllerCampoCidade.addListener(_usuarioCidadeListen);
  }

  _usuarioNomeListen() {
    _usuarioNome = _controllerCampoNome.text;
  }

  _usuarioCidadeListen() {
    _usuarioCidade = _controllerCampoCidade.text;
  }

  initState() {
    super.initState();
    _CadastroPageState();
  }

 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              textFormFieldNome(),
              textFormFieldCidade(),
              raisedButtonConfirmar(context),
            ]),
      ),
    );
  }

  RaisedButton raisedButtonConfirmar(BuildContext context) {
    return RaisedButton(
      child: Text(_txtBtnConfirmar, style: TextStyle(fontSize: 18)),
      textColor: Colors.blue,
      color: Colors.white,
      onPressed: () => {
        novoUsuario = AlbumUsuario.construtor(_usuarioNome, _usuarioCidade),
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()))
      },
    );
  }

  TextField textFormFieldCidade() {
    return TextField(
        controller: _controllerCampoCidade,
        autofocus: true,
        keyboardType: TextInputType.text,
        style: TextStyle(color: Colors.black, fontSize: 20),
        decoration: InputDecoration(
          labelText: _rotuloCampoCidade,
          labelStyle: TextStyle(color: Colors.black),
        ));
  }

  TextField textFormFieldNome() {
    return TextField(
        controller: _controllerCampoNome,
        autofocus: true,
        keyboardType: TextInputType.text,
        style: TextStyle(color: Colors.black, fontSize: 20),
        decoration: InputDecoration(
          labelText: _rotuloCampoNome,
          labelStyle: TextStyle(color: Colors.black),
        ));
  }
}
