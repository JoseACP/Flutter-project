import 'package:flutter/material.dart';
import 'package:ui_1/Screens/user.dart';
import 'package:ui_1/Screens/home.dart';
import 'package:ui_1/Screens/statistics.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int index_color = 0;
  List<Widget> screens = [Home(), Statistics(), User()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 400), // Duración de la animación
        child: screens[index_color],
        switchInCurve: Curves.easeInOut, // Curva de entrada
        switchOutCurve: Curves.easeInOut, // Curva de salida
        transitionBuilder: (child, animation) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 0;
                  });
                },
                child: Icon(
                  Icons.graphic_eq_outlined,
                  size: 30,
                  color: index_color == 0 ? Color.fromARGB(255, 137, 84, 54) : Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 1;
                  });
                },
                child: Icon(
                  Icons.circle_notifications_sharp,
                  size: 30,
                  color: index_color == 1 ? Color.fromARGB(255, 137, 84, 54) : Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 2;
                  });
                },
                child: Icon(
                  Icons.person_outlined,
                  size: 30,
                  color: index_color == 2 ? Color.fromARGB(255, 137, 84, 54) : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
