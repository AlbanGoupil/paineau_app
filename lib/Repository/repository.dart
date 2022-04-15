
import 'package:paineau_app/Repository/vehiculesrepository.dart';

import '../models/vehicules.dart';

class Repository{

  Future<List<Vehicules>> getVehicules(){
    return VehiculesRepository().fetchVehicules();
  }
}