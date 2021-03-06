import 'package:shared_preferences/shared_preferences.dart';

import '../models/vehicules.dart';

class Preferencesrepository{
  Future<void> saveVehicules(List<Vehicules> vehicules) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> json = [];
    for(var vehicule in vehicules){
      json.add(vehicule.toJson());
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