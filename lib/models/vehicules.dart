import 'dart:convert';

class Vehicules {
  int id;
  String plaque;
  String nom_conducteur;
  String date_acquisition;
  String modele;
  String date_controle;
  int kilometrage_controle;
  String date_vidange;
  int kilometrage_vidange;
  int kilometrage_courroie;
  int duree_courroie;

  Vehicules(this.id,this.plaque,this.nom_conducteur,this.date_acquisition,this.modele,this.date_controle,this.kilometrage_controle,this.date_vidange,this.kilometrage_vidange,this.kilometrage_courroie,this.duree_courroie);

  factory Vehicules.fromGeoJson(Map<String, dynamic> json){
    int id = json["id"];
    String plaque = json["plaque"];
    String nom_conducteur = json["nom_conducteur"];
    String date_acquisition = json["date_acquisition"];
    String modele = json["modele"];
    String date_controle = json["date_controle"];
    int kilometrage_controle = json["kilometrage_controle"];
    String date_vidange = json["date_vidange"];
    int kilometrage_vidange = json["kilometrage_vidange"];
    int kilometrage_courroie = json["kilometrage_courroie"];
    int duree_courroie = json["duree_courroie"];

    return Vehicules(id,plaque,nom_conducteur,date_acquisition,modele,date_controle,kilometrage_controle,date_vidange,kilometrage_vidange,kilometrage_courroie,duree_courroie);
  }
  toMap(){

  }
  String toJson() {
    return jsonEncode({
      'id' : id,
      'plaque': plaque,
      'nom_conducteur': nom_conducteur,
      'date_acquisition': date_acquisition,
      'modele': modele,
      'date_controle': date_controle,
      'kilometrage_controle': kilometrage_controle,
      'date_vidange': date_vidange,
      'kilometrage_vidange': kilometrage_vidange,
      'kilometrage_courroie': kilometrage_courroie,
      'duree_courroie' : duree_courroie
    });
  }
  factory Vehicules.fromJson(String json) {
    Map<String, dynamic> map = jsonDecode(json);
    return Vehicules(
        map['id'],
        map['plaque'],
        map['nom_conducteur'],
        map['date_acquisition'],
        map['modele'],
        map['date_controle'],
        map['kilometrage_controle'],
        map['date_vidange'],
        map['kilometrage_vidange'],
        map['kilometrage_courroie'],
        map['duree_courroie']);
    }
}