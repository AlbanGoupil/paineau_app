import 'package:flutter/material.dart';
import 'package:paineau_app/ui/screens/add_vehicule.dart';
import 'package:paineau_app/ui/screens/notifs_incoming.dart';
import 'package:paineau_app/ui/screens/vehicules_view.dart';

class Dashboard extends StatefulWidget{
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with SingleTickerProviderStateMixin {
  int _selectedIndexForBottomNavigationBar = 0;

  //1
  static final List<Widget> _listOfIconsForBottomNavigationBar = <Widget>[
    const Notifs_incoming(),
    Vehicules_view(),
    Add_vehicule(),
  ];


  void _onItemTappedForBottomNavigationBar(int index) {
    setState(() {
      _selectedIndexForBottomNavigationBar = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: DefaultTabController(length: 3, child: Scaffold(      //7
        body: Center(child:
        _listOfIconsForBottomNavigationBar.elementAt(_selectedIndexForBottomNavigationBar)),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTappedForBottomNavigationBar, // this will be set when a new tab is tapped
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),label: 'Dashboard'),
            BottomNavigationBarItem(
                icon: Icon(Icons.directions_car_filled),label: 'Mes véhicules'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_sharp),label: 'Ajouter un véhicule'),

          ],
          currentIndex: _selectedIndexForBottomNavigationBar,
        ),
      )),
    );
  }
}