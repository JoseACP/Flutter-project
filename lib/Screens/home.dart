import 'package:flutter/material.dart';
import 'package:ui_1/services/firebase_service.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
     String? nameFromFirebase;
     String? distanceFromFirebase;
     String? ocupationFromFirebase;
     String? weightFromFirebase;

   @override
  void initState() {
    super.initState();

    // Llama a getName() para obtener los datos de Firebase
    getName().then((name) {
      setState(() {
        nameFromFirebase = name; // Asigna los datos de Firebase a la variable
      });
    });

    // getSteps jala los pasos que ha dado el usuario
    getDistance().then((distance) {
      setState(() {
        distanceFromFirebase = distance; // Asigna los datos de Firebase a la variable
      });
    });
  

  // getSteps jala los pasos que ha dado el usuario
    getOcupation().then((ocupation) {
      setState(() {
        ocupationFromFirebase = ocupation; // Asigna los datos de Firebase a la variable
      });
    });

    // getSteps jala los pasos que ha dado el usuario
    getWeight().then((weight) {
      setState(() {
        weightFromFirebase = weight; // Asigna los datos de Firebase a la variable
      });
    });
  }
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(height: 370, child: _head()),
              ),
               SliverToBoxAdapter(
              child: SizedBox(height: 1), // Espacio vertical entre _head y los títulos
            ),
          SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Friends',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 19,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Friends rating >',
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 17,
                        color: Color.fromARGB(255, 214, 103, 11),
                      ),
                    ),
                  ],
                ),
              ),
            ),
             SliverToBoxAdapter(
                child: SizedBox(height: 10), // Espacio vertical entre los títulos y los círculos
              ),
           SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                height: 100, // Ajusta la altura del contenedor de círculos y tarjetas
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: friends.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8), // Espacio entre círculos
                      child: Column(
                        children: [
                          SizedBox(height: 5), // Ajusta esta altura para mover el contenido hacia abajo
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(friends[index].iconPath),
                          ),
                          SizedBox(height: 5),
                          Text(
                            friends[index].name,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    );

                  },
                ),
              ),
            ),
          ),
           SliverToBoxAdapter(
            child: SizedBox(height: 30), // Espacio vertical entre círculos y las tarjetas de metas
          ),
          SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Goals',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 19,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Add goal +',
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 17,
                        color: Color.fromARGB(255, 214, 103, 11),
                      ),
                    ),
                  ],
                ),
              ),
            ),

             SliverToBoxAdapter(
                  child: SizedBox(height: 10), // Espacio vertical entre círculos y las tarjetas de metas
                ),
                              
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                height: 150, // Ajusta la altura del contenedor de tus tarjetas de metas
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // Tarjeta de "Meta Kilos"
                    Row(
                      children: [
                        Container(
                          height: 120,
                          width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      weightFromFirebase != null ? weightFromFirebase! : '👾', // Reemplaza con tu meta de peso
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 44,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'kg',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 24,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  child: Text(
                                    'Goal weitgh',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        SizedBox(width: 16.0), // Espacio horizontal entre los contenedores
                        Container(
                          height: 120,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    distanceFromFirebase != null ? distanceFromFirebase! : '🏃‍♂️', // Reemplaza con tu meta de peso
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 44,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    ' km',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 24,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Goal distance',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              
                            ],
                          ),
                        )
                        
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          

            ],
          )),
    );
  }



Widget _head() {
  return Stack(
    children: [
      Container(
        width: double.infinity,
        height: 210,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/map.jpg'), // Ruta de la imagen en tus activos
            fit: BoxFit.cover, // Ajusta la imagen al tamaño del contenedor
          ),
          boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(10, 7, 0, 0.377),
                  offset: Offset(0, 6),
                  blurRadius: 12,
                  spreadRadius: 2,
                ),
              ],
         
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(150),
            bottomRight: Radius.circular(160),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 35,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nameFromFirebase != null ? nameFromFirebase! : 'Loading..',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                      color: Color.fromARGB(255, 224, 223, 223),
                    ),
                  ),
                  Text(
                    ocupationFromFirebase != null ? ocupationFromFirebase! : '🍖',
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    Container(
      height: 500,
      child: Center(
        child: Positioned(
          top: 100, // Ajusta la posición vertical
          left: 37,
          child: Container(
            height: 170,
            width: 170,
            decoration: BoxDecoration(
              boxShadow: [
                const BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.301),
                  offset: Offset(0, 6),
                  blurRadius: 8,
                  spreadRadius: 1,
                ),
              ],
              borderRadius: BorderRadius.circular(85),
              image: DecorationImage(
                image: AssetImage('images/yo.jpg'), // Ruta de la imagen en tus activos
                fit: BoxFit.cover, // Ajusta la imagen al tamaño del contenedor
              ),
            ),
          ),
        ),
      ),
    ),

      
    ],
    
  );
}
}
class Friend {
  final String name;
  final String iconPath;

  Friend({required this.name, required this.iconPath});
}

final List<Friend> friends = [
  Friend(name: 'Carlos', iconPath: 'images/carlos_icon.jpg'),
  Friend(name: 'Pepe', iconPath: 'images/pepe_icon.jpg'),
  Friend(name: 'Alan', iconPath: 'images/alan_icon.jpg'),
  Friend(name: 'Caro', iconPath: 'images/caro_icon.jpg'),
  Friend(name: 'Gustavo', iconPath: 'images/gustavo_icon.jpg'),
];