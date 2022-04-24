import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paineau_app/models/vehicules.dart';
import 'package:paineau_app/ui/screens/vehicule_view.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../Repository/preferencesrepository.dart';
import '../../Repository/repository.dart';

class Vehicules_view extends StatefulWidget{
  @override
  State<Vehicules_view> createState() => _Vehicules_viewState();
}

class _Vehicules_viewState extends State<Vehicules_view> {
  late List<Vehicules> vehicules = [];
  List<Vehicules> vehicule_saved =[] ;

  Preferencesrepository pref = Preferencesrepository();
  @override
  void initState()  {
    super.initState();
    Repository().getVehicules().then((vehicules_api) {
        for (var vehicule in vehicules_api){
          vehicules.add(vehicule);
        }
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
                trailing: IconButton(
                    icon: Icon(Icons.save),
                  onPressed: () {
                      vehicule_saved.add(vehicules[index]);
                      Preferencesrepository().saveVehicules(vehicule_saved);
                  },),
                title: Text(vehicules[index].modele.toString(),
                  style: GoogleFonts.openSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  color: Colors.black,
                ),),
                subtitle: Text(vehicules[index].plaque.toString() + ', ' +
                    vehicules[index].nom_conducteur.toString(),
                      style: GoogleFonts.openSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                      )
                ),
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
