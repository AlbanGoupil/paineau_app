import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paineau_app/models/vehicules.dart';
import 'package:paineau_app/ui/screens/vehicule_view.dart';

import '../../Repository/preferencesrepository.dart';
import '../../Repository/repository.dart';

class Vehicules_view extends StatefulWidget{
  @override
  State<Vehicules_view> createState() => _Vehicules_viewState();
}

class _Vehicules_viewState extends State<Vehicules_view> {
  late List<Vehicules> vehicules = [];

  Preferencesrepository pref = Preferencesrepository();
  @override
  void initState()  {
    super.initState();
    Repository().getVehicules().then((vehicules_api) {
      vehicules = vehicules_api;
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return
        ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.directions_car),
                title: Text(vehicules[index].modele.toString()),
                subtitle: Text(vehicules[index].plaque.toString() + ', ' +
                    vehicules[index].nom_conducteur.toString()),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Vehicule_view(),
                      settings: RouteSettings(
                        arguments: vehicules[index],
                      ),
                    ),
                  );
                },
              ),
            );
          },
          itemCount: vehicules.length,
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(height: 0);
          },
        );
    throw UnimplementedError();
  }
}
