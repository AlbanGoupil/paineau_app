import 'package:shared_preferences/shared_preferences.dart';

import '../models/vehicules.dart';

class Preferencesrepository{
  Future<void> saveVehicules(List<Vehicules> companies) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> json = [];
    for(var company in companies){
      json.add(company.toJson());
    }
    prefs.setStringList('vehicules', json);

  }
  Future<List<Vehicules>> loadVehicules() async {
    final prefs = await SharedPreferences.getInstance();
    List<Vehicules> companies  = [];
    List<String>? json = prefs.getStringList('vehicules');
    if(json !=null){
      for(var item in json){
        companies.add(Vehicules.fromJson(item));
      }
    }
    return companies;
  }
}