class AlbumUsuario{
  String nome;
  String cidade;

  AlbumUsuario({this.nome,this.cidade});
  AlbumUsuario.construtor(nome,senha){
    this.nome = nome;
    this.cidade = senha;
  }
  AlbumUsuario.fromJson(Map json)
      : nome = json['nome'],
        cidade = json['senha'];
  
}