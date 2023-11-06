import 'package:flutter/material.dart'; 
import 'package:ui_1/services/firebase_service.dart';



class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
   String? stepsFromFirebase;

   @override
  void initState() {
    super.initState();

    // Llama a getSteps() para obtener los datos de Firebase
    getSteps().then((steps) {
      setState(() {
        stepsFromFirebase = steps; // Asigna los datos de Firebase a la variable
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
                child: SizedBox(height: 340, child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/waves.png'),
                          fit: BoxFit.cover,
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
                                  stepsFromFirebase != null ? stepsFromFirebase! : '💿',
                                  style: TextStyle(
                                    fontSize: 64,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'Steps',
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
            )),
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
          )),
    );
  }

 
//   Widget _head(String steps) {
//   return Stack(
//     children: [
//       Column(
//         children: [
//           Container(
//             width: double.infinity,
//             height: 300,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('images/waves.png'),
//                 fit: BoxFit.cover,
//               ),
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(200),
//                 bottomRight: Radius.circular(200),
//               ),
//             ),
//             child: Stack(
//               children: [
//                 Center(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         steps != null ? steps : 'Datos no disponibles',
//                         style: TextStyle(
//                           fontSize: 68,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(left: 8.0),
//                         child: Text(
//                           'Steps',
//                           style: TextStyle(
//                             fontSize: 24,
//                             fontWeight: FontWeight.w200,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ],
//   );
// }

}
