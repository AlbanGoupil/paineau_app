import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Add_vehicule extends StatelessWidget{
  final _textFieldController = TextEditingController();
  final _textFieldController2 = TextEditingController();
  final _textFieldController3 = TextEditingController();
  final _textFieldController4 = TextEditingController();


  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context){
    final args = ModalRoute.of(context)?.settings.arguments;
    return Container(
        margin: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                    controller: _textFieldController2,
                    decoration: InputDecoration(
                        hintText: "Nom du conducteur"
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Le nom ne doit pas être vide';
                      }
                      return null;
                    }
                ),
                TextFormField(
                    controller: _textFieldController3,
                    decoration: InputDecoration(
                        hintText: "Plaque d'immatriculation"
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Le champ ne doit pas être vide';
                      }
                      return null;
                    }
                ),
                const SizedBox(
                  height: 25.0,
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                      }
                    },
                    child: Text('Ajouter un Véhicule'),
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
