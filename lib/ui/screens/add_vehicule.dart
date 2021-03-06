import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paineau_app/Repository/vehiculesrepository.dart';
import 'package:paineau_app/models/vehicules.dart';

class Add_vehicule extends StatelessWidget{
  final _textFieldController = TextEditingController();
  final _textFieldController1 = TextEditingController();
  final _textFieldController2 = TextEditingController();
  final _textFieldController3 = TextEditingController();
  final _textFieldController4 = TextEditingController();
  final _textFieldController5 = TextEditingController();
  final _textFieldController6 = TextEditingController();
  final _textFieldController7 = TextEditingController();
  final _textFieldController8 = TextEditingController();
  final _textFieldController9 = TextEditingController();


  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context){
    final args = ModalRoute.of(context)?.settings.arguments;
    return Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      elevation: 8,
                      shadowColor: Colors.orange,
                      child: TextFormField(
                          controller: _textFieldController,
                          decoration: InputDecoration(
                              hintText: "Nom du conducteur",
                              border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Indiquez le nom du conducteur';
                            }
                            return null;
                          }
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      elevation: 8,
                      shadowColor: Colors.orange,
                      child: TextFormField(
                          controller: _textFieldController1,
                          decoration: InputDecoration(
                              hintText: "Plaque d'immatriculation",
                              border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Indiquez la plaque d\'immatriculation';
                            }
                            return null;
                          }
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      elevation: 8,
                      shadowColor: Colors.orange,
                      child: TextFormField(
                          controller: _textFieldController2,
                          decoration: InputDecoration(
                              hintText: "Date d\'acquisition",
                              border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Indiquez la date d\'acquisition du v??hicule';
                            }
                            return null;
                          }
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      elevation: 8,
                      shadowColor: Colors.orange,
                      child: TextFormField(
                          controller: _textFieldController3,
                          decoration: InputDecoration(
                              hintText: "Mod??le",
                              border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Indiquez le mod??le';
                            }
                            return null;
                          }
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      elevation: 8,
                      shadowColor: Colors.orange,
                      child: TextFormField(
                          controller: _textFieldController4,
                          decoration: InputDecoration(
                              hintText: "Date du dernier contr??le technique",
                              border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Indiquez la date du dernier contr??le technique';
                            }
                            return null;
                          }
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      elevation: 8,
                      shadowColor: Colors.orange,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: _textFieldController5,
                          decoration: InputDecoration(
                              hintText: "Kilom??trage lors du dernier contr??le",
                              border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Indiquez le kilom??trage';
                            }
                            return null;
                          }
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      elevation: 8,
                      shadowColor: Colors.orange,
                      child: TextFormField(
                          controller: _textFieldController6,
                          decoration: InputDecoration(
                              hintText: "Date de la derni??re vidange",
                              border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Indiquez la date de la derni??re vidange';
                            }
                            return null;
                          }
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      elevation: 8,
                      shadowColor: Colors.orange,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: _textFieldController7,
                          decoration: InputDecoration(
                              hintText: "Kilom??trage lors de la derni??re vidange",
                              border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Indiquez le kilom??trage de la derni??re vidange';
                            }
                            return null;
                          }
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      elevation: 8,
                      shadowColor: Colors.orange,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: _textFieldController8,
                          decoration: InputDecoration(
                              hintText: "Kilom??trage lors du changement de la courroie",
                              border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Indiquez le kilom??trage lors du changement de la courroie';
                            }
                            return null;
                          }
                      ),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      elevation: 8,
                      shadowColor: Colors.orange,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: _textFieldController9,
                          decoration: InputDecoration(
                              hintText: "Dur??e de la courroie (en mois)",
                              border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Indiquez la dur??e de la courroie';
                            }
                            return null;
                          }
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 25.0,
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          Vehicules vehicule = Vehicules(
                              6,
                              _textFieldController1.text,
                              _textFieldController.text,
                              _textFieldController2.text,
                              _textFieldController3.text,
                              _textFieldController4.text,
                              int.parse(_textFieldController5.text),
                              _textFieldController6.text,
                              int.parse(_textFieldController7.text),
                              int.parse(_textFieldController8.text),
                              int.parse(_textFieldController9.text),
                          );
                          List<Vehicules> list = [];
                          list.add(vehicule);
                          VehiculesRepository().createVehciule(vehicule);
                          _showToast(context);
                        }
                      },
                      child: Text('Ajouter un V??hicule'),

                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
void _showToast(BuildContext context) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: const Text('V??hicule ajout??'),
    ),
  );
}

