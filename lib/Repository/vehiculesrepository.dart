import 'dart:convert';

import 'package:http/http.dart';

import '../models/vehicules.dart';

class VehiculesRepository{
  Future<List<Vehicules>> fetchVehicules() async {
    final Response response = await get(Uri.https('62593ac5cda73d132d120855.mockapi.io','/api/paineau/ID'));
    if(response.statusCode == 200) {
      final List<Vehicules> vehicules = [];
      final List<dynamic> json = jsonDecode(response.body);
      if(json.isNotEmpty) {
        final List<dynamic> features = json;
        for (var feature in features) {
          vehicules.add(Vehicules.fromGeoJson(feature));
        }
      }
      return vehicules;
    }
    else{
      throw Exception('Failed to load addresses');
    }
  }
}