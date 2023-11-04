import 'package:flutter/material.dart'; 
import 'package:firebase_core/firebase_core.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:ui_1/data/model/add_date.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}



class _UserState extends State<User> {
  var history;
  final box = Hive.box<Add_data>('data');
  final List<String> day = [
    'Monday',
    "Tuesday",
    "Wednesday",
    "Thursday",
    'friday',
    'saturday',
    'sunday'
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: box.listenable(),
              builder: (context, value, child) {
                return CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: SizedBox(height: 340, child: _head()),
                    ),
                    SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Daily goals',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 19,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Open list >',
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
                                            '5', // Reemplaza con tu meta de peso
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 44,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            'Cups',
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
                                          'Drinking goal',
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
                                          '7', // Reemplaza con tu meta de peso
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 44,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          ' Hours',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w200,
                                            fontSize: 24,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Sleeping goal',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),

                              SizedBox(width: 16.0),
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
                                            '70', // Reemplaza con tu meta de peso
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
                                          'Meta Peso',
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
                            ],
                          )

                        ],
                        
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                        child: SizedBox(height: 10), // Espacio vertical entre círculos y las tarjetas de metas
                      ),
                      SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Last activity',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 19,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'See details >',
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 17,
                              color: Color.fromARGB(255, 214, 103, 11),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),SliverToBoxAdapter(
                        child: SizedBox(height: 10), // Espacio vertical entre círculos y las tarjetas de metas
                      ),
                      SliverToBoxAdapter(
                      child: SizedBox(height: 10), // Espacio vertical entre los títulos y los círculos
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
                                  height: 160,
                                  width: 360,
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
                                  child: Row(
                                    children: [
                                      // Primera columna con formato especial
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '5', // Reemplaza con tu número
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 44,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Cups',
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
                                              'Drinking goal',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 16,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                      // Separador entre las columnas
                                      SizedBox(width: 16.0),

                                      // Segunda columna con formato diferente
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '7', // Reemplaza con tu número
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 44,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Hours',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w200,
                                                  fontSize: 24,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'Sleeping goal',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )

                        ],
                        
                      ),
                    ),
                  ),
                ),

                  ],
                );
              })),
    );
  }

  Widget getList(Add_data history, int index) {
    return Dismissible(
        key: UniqueKey(),
        onDismissed: (direction) {
          history.delete();
        },
        child: get(index, history));
  }

  ListTile get(int index, Add_data history) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.asset('images/${history.name}.png', height: 40),
      ),
      title: Text(
        history.name,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        '${day[history.datetime.weekday - 1]}  ${history.datetime.year}-${history.datetime.day}-${history.datetime.month}',
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }



Widget _head() {
  int steps = 0; // Valor predeterminado en caso de que snapshot sea nulo o no contenga la propiedad 'steps'.

  return StreamBuilder<DocumentSnapshot>(
    stream: FirebaseFirestore.instance.collection('Users').doc('LDUy7pOjFtmGty7YZ7ta').snapshots(),
    builder: (context, snapshot) {
      if (!snapshot.hasData) {
        return CircularProgressIndicator(); // Muestra un indicador de carga mientras se obtiene el dato.
      }

      if (snapshot.hasData) {
        var data = snapshot.data();
        if (data != null && data.containsKey('steps')) {
          steps = data['steps'];
        }
      }


      return Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/waves.png'), // Ruta de la imagen en tus activos
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
                            '$steps', // Mostrar el valor de 'steps' en lugar de 1223
                            style: TextStyle(
                              fontSize: 68,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0), // Espacio entre el número y las unidades
                            child: Text(
                              'Steps', // Unidades más pequeñas
                              style: TextStyle(
                                fontSize: 24,
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
            ],
          ),
        ],
      );
    },
  );
}


}


