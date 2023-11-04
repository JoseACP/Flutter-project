import 'package:flutter/material.dart';
import 'package:ui_1/data/utlity.dart';
import '../data/model/add_date.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  State<Statistics> createState() => _StatisticsState();
}

ValueNotifier kj = ValueNotifier(0);

class _StatisticsState extends State<Statistics> {
  List day = ['Outdoor running', 'Treadmill', 'Outdoor cycling', 'Walking'];
  List f = [today(), week(), month(), year()];
  List<Add_data> a = [];
  int index_color = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: kj,
          builder: (BuildContext context, dynamic value, Widget? child) {
           
            a = f[value];
            return custom();
          },
        ),
      ),
    );
  }

  CustomScrollView custom() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
                      child: SizedBox(height: 300, child: _head()),
                    ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(
                width: 34,
                height: 2),
              Text(
                'Chose type of activity',
                
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                ),
                 
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(
                      4,
                      (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              index_color = index;
                              kj.value = index;
                            });
                          },
                          child: Container(
                            height: 120,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: index_color == index
                                  ? Color.fromARGB(255, 248, 136, 31)
                                  : Colors.white,
                            ),
                            alignment: Alignment.center, // Centra el contenido vertical y horizontalmente
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center, // Centra el contenido verticalmente
                              children: [
                                Icon(
                                  Icons.sports_martial_arts_outlined, // Reemplaza con el icono que desees
                                  color: index_color == index
                                      ? Colors.white
                                      : Colors.black,
                                  size: 54, // Ajusta el tamaño del icono según tus necesidades
                                ),
                                SizedBox(height: 8.0), // Espacio vertical entre el icono y el texto
                                Text(
                                  day[index],
                                  style: TextStyle(
                                    color: index_color == index
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ],
                            ),
                          ),

                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 
                    Container(
                      width: 378, // Ancho del círculo
                      height: 200, // Altura del círculo
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, // Forma circular
                        color: Color.fromARGB(255, 248, 136, 31), // Color del círculo
                      ),
                      child: Center( // Centra el icono en el círculo
                        child: Icon(
                          Icons.play_arrow,
                          size: 120, // Tamaño del icono
                          color: Colors.white, // Color del icono
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        
      ],
    );
  }
 Widget _head() {
  return Stack(
    children: [
      // Coloca la capa del Container aquí abajo
      Container(
        width: double.infinity,
        height: 280,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/map.jpg'), // Ruta de la imagen en tus activos
            fit: BoxFit.cover, // Ajusta la imagen al tamaño del contenedor
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(200),
            bottomRight: Radius.circular(200),
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '22.2', // Número grande
                    style: TextStyle(
                      fontSize: 68, // Tamaño grande
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0), // Espacio entre el número y las unidades
                    child: Text(
                      'km', // Unidades más pequeñas
                      style: TextStyle(
                        fontSize: 24, // Tamaño más pequeño
                        fontWeight: FontWeight.w200,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),


      
      Positioned(
        top: 20, // Ajusta la posición vertical del icono
        right: 20, // Ajusta la posición horizontal del icono
        child: Icon(
          Icons.display_settings_outlined, // Reemplaza 'your_icon_here' con el icono que desees
          size: 40, // Ajusta el tamaño del icono
          color: Color.fromARGB(255, 248, 136, 31) // Ajusta el color del icono
        ),
      ),
    ],
  );
}


}
