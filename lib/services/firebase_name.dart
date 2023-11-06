import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<String?> getName() async {
  try {
    DocumentSnapshot document = await db.collection('Users').doc('LDUy7pOjFtmGty7YZ7ta').get();
    if (document.exists) {
      String? name = document['name'] as String?;
      return name;
    } else {
      // El documento no existe
      return null;
    }
  } catch (e) {
    print('Error al obtener los datos: $e');
    return null;
  }
}
