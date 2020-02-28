class AlbumUsuario{
  String nome;
  String cidade;

  AlbumUsuario({this.nome,this.cidade});
  AlbumUsuario.construtor(nome,senha){
    this.nome = nome;
    this.cidade = senha;
  }
  factory AlbumUsuario.fromJson(Map<String, dynamic> json) {
    return AlbumUsuario(
      nome: json['nome'],
      cidade: json['cidade'],
    );
  }
  
}
