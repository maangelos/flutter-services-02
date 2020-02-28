import 'dart:convert';

import 'package:cadastro/albumUsuario.dart';
import 'package:cadastro/url/url.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final title = 'Lista de Usuários';
AlbumUsuario novoUsuario = new AlbumUsuario();

class ListaUsuarios extends StatefulWidget {
  @override
  _ListaUsuariosState createState() => _ListaUsuariosState();
}

class _ListaUsuariosState extends State<ListaUsuarios> {
  List<AlbumUsuario> dadosUsuarios = new List<AlbumUsuario>();

  _getUsuarios() {
    URL.getUsuarios().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        dadosUsuarios =
            list.map((model) => AlbumUsuario.fromJson(model)).toList();
        if (novoUsuario != null) {
          dadosUsuarios.add(novoUsuario);
        }
      });
    });
  }

  initState() {
    super.initState();
    _getUsuarios();
  }

  dispose() {
    super.dispose();
  }


  String nomeUsuario;
  String cidadeUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
            itemCount: dadosUsuarios.length,
            itemBuilder: (context, index) {
              if (dadosUsuarios[index].nome != null && dadosUsuarios[index].cidade != null) {
                nomeUsuario = dadosUsuarios[index].nome;
                cidadeUsuario = dadosUsuarios[index].cidade;
              }
              return Card(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.person_outline, color: Colors.black),
                        title: Text(nomeUsuario, style: TextStyle(color: Colors.black)),
                      ),
                      ListTile(
                        leading: Icon(Icons.location_on, color: Colors.black54),
                        title: Text(cidadeUsuario, style: TextStyle(color: Colors.black54)),
                      )
                    ],
                  )
              );
            }));
  }
}
