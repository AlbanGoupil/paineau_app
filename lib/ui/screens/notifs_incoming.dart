import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:paineau_app/Repository/preferencesrepository.dart';

import '../../models/vehicules.dart';

class Notifs_incoming extends StatefulWidget{
  const Notifs_incoming({Key? key}) : super(key: key);

  @override
  State<Notifs_incoming> createState() => _Notifs_viewState();
}

class _Notifs_viewState extends State<Notifs_incoming> {
  List<Vehicules> vehicules = [];
  @override
  void initState() {
    super.initState();
    Preferencesrepository().loadVehicules().then((vehicules_saved){
      for(var veh in vehicules_saved){
        vehicules.add(veh);
      }
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
            child: ListView.builder(
              itemCount: vehicules.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      leading: const Icon(Icons.car_repair,  size: 50.0,),
                      title: Text(vehicules[index].modele,
                        style: GoogleFonts.openSans(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          color: Colors.black,
                        ),
                      ) ,
                      subtitle: Text(hasNotifs(vehicules[index]).toString(),
                        style: GoogleFonts.openSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          color: Colors.red,
                        ),) ,

                    ),
                    elevation: 10,
                    shadowColor: Colors.orange,
                  ),
                );
              },
            ),
        ),
      );

    throw UnimplementedError();
  }
}
 hasNotifs(Vehicules vehicule){
  DateTime now = new DateTime.now();
  DateTime date = new DateTime(now.year, now.month, now.day);

  DateTime date_controle = new DateFormat("dd/MM/yyyy").parse(vehicule.date_controle);
  var days_controle = date.difference(date_controle).inDays;

  DateTime date_vidange = new DateFormat("dd/MM/yyyy").parse(vehicule.date_vidange);
  var days_vidange = date.difference(date_vidange).inDays;

  DateTime date_courroie = new DateFormat("dd/MM/yyyy").parse(vehicule.date_acquisition);
  date_courroie.add(Duration(days: vehicule.duree_courroie*30));
  var days_courroie = date.difference(date_courroie.add(Duration(days: vehicule.duree_courroie*30))).inDays;

  var string_retour = "";
  if(days_controle>730){
    string_retour += "\n Il faut faire le contrôle du véhicule";
  }
  if(days_vidange>730){
    string_retour += "\n Il faut faire la vidange du véhicule";
  }
  if(days_courroie>0){
    string_retour += "\n Il faut changer la courroie du véhicule";
  }
  else{
    string_retour += "Aucune annomalie détectée pour ce véhicule";
  }
  return string_retour;
}
