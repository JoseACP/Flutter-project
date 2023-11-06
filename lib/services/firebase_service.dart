import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<String?> getSteps() async {
  try {
    DocumentSnapshot document = await db.collection('Users').doc('LDUy7pOjFtmGty7YZ7ta').get();
    if (document.exists) {
      String? steps = document['steps'] as String?;
      return steps;
    } else {
      // El documento no existe
      return null;
    }
  } catch (e) {
    print('Error al obtener los datos: $e');
    return null;
  }
}

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

Future<String?> getDistance() async {
  try {
    DocumentSnapshot document = await db.collection('Users').doc('LDUy7pOjFtmGty7YZ7ta').get();
    if (document.exists) {
      String? distance = document['distance'] as String?;
      return distance;
    } else {
      // El documento no existe
      return null;
    }
  } catch (e) {
    print('Error al obtener los datos: $e');
    return null;
  }
}

Future<String?> getCups() async {
  try {
    DocumentSnapshot document = await db.collection('Users').doc('LDUy7pOjFtmGty7YZ7ta').get();
    if (document.exists) {
      String? cups = document['cups'] as String?;
      return cups;
    } else {
      // El documento no existe
      return null;
    }
  } catch (e) {
    print('Error al obtener los datos: $e');
    return null;
  }
}

Future<String?> getOcupation() async {
  try {
    DocumentSnapshot document = await db.collection('Users').doc('LDUy7pOjFtmGty7YZ7ta').get();
    if (document.exists) {
      String? ocupation = document['ocupation'] as String?;
      return ocupation;
    } else {
      // El documento no existe
      return null;
    }
  } catch (e) {
    print('Error al obtener los datos: $e');
    return null;
  }
}

Future<String?> getHours() async {
  try {
    DocumentSnapshot document = await db.collection('Users').doc('LDUy7pOjFtmGty7YZ7ta').get();
    if (document.exists) {
      String? hours = document['hours'] as String?;
      return hours;
    } else {
      // El documento no existe
      return null;
    }
  } catch (e) {
    print('Error al obtener los datos: $e');
    return null;
  }
}

Future<String?> getWeight() async {
  try {
    DocumentSnapshot document = await db.collection('Users').doc('LDUy7pOjFtmGty7YZ7ta').get();
    if (document.exists) {
      String? weight = document['weight'] as String?;
      return weight;
    } else {
      // El documento no existe
      return null;
    }
  } catch (e) {
    print('Error al obtener los datos: $e');
    return null;
  }
}


