import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paineau_app/models/vehicules.dart';

class Vehicule_view extends StatelessWidget{
  const Vehicule_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vehicule = ModalRoute.of(context)!.settings.arguments as Vehicules;

    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text(vehicule.modele.toString()),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [

                  Card(
                    child: ListTile(
                      leading: Icon(Icons.man),
                      title: Text(vehicule.nom_conducteur.toString()),
                    ),
                    elevation: 8,
                    shadowColor: Colors.orange,
                    margin: EdgeInsets.all(10),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.numbers),
                      title: Text(vehicule.plaque.toString()),
                    ),
                    elevation: 8,
                    shadowColor: Colors.orange,
                    margin: EdgeInsets.all(10),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.drive_eta_outlined),
                      title: Text(vehicule.kilometrage_vidange.toString() + "km lors de la dernière vidange"),
                    ),
                    elevation: 8,
                    shadowColor: Colors.orange,
                    margin: EdgeInsets.all(10),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.drive_eta_outlined),
                      title: Text(vehicule.kilometrage_controle.toString() + "km lors du derneir contrôle technique"),
                    ),
                    elevation: 8,
                    shadowColor: Colors.orange,
                    margin: EdgeInsets.all(10),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.drive_eta_outlined),
                      title: Text(vehicule.kilometrage_courroie.toString() + "km avec la dernière courroie"),
                    ),
                    elevation: 8,
                    shadowColor: Colors.orange,
                    margin: EdgeInsets.all(10),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.date_range),
                      title: Text('Date du dernier contrôle technique'),
                      subtitle: Text(vehicule.date_controle.toString()),
                    ),
                    elevation: 8,
                    shadowColor: Colors.orange,
                    margin: EdgeInsets.all(10),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.date_range),
                      title: Text('Date de la dernière vidange'),
                      subtitle: Text(vehicule.date_vidange.toString()),
                    ),
                    elevation: 8,
                    shadowColor: Colors.orange,
                    margin: EdgeInsets.all(10),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.date_range),
                      title: Text('Date de l\'acquisition du véhicule'),
                      subtitle: Text(vehicule.date_acquisition.toString()),
                    ),
                    elevation: 8,
                    shadowColor: Colors.orange,
                    margin: EdgeInsets.all(10),
                  ),Card(
                    child: ListTile(
                      leading: Icon(Icons.date_range_sharp),
                      title: Text(vehicule.duree_courroie.toString() + "mois de durée de courroie"),
                    ),
                    elevation: 8,
                    shadowColor: Colors.orange,
                    margin: EdgeInsets.all(10),
                  ),

                ],
              ),
            ),
          )
      );
    throw UnimplementedError();
  }

}