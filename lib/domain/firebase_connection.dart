import 'dart:convert';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_application_2/Entities/registros.dart';
import 'package:flutter_application_2/Entities/response_firebase.dart';

class FirebaseConnetion {
  static final FirebaseDatabase _database = FirebaseDatabase.instance;

  DatabaseReference instanceFirebase() {
    return _database.ref('/Registros');
  }

  /*void getAllRegistros() {
    DatabaseReference _registros = instanceFirebase();

    _registros.onValue.listen((event) {
      final registros = event.snapshot.value;
      Map<String, dynamic> registrosJson = json.decode(registros.toString());
      print(registrosJson);
      ResponseFirebase reg = ResponseFirebase.fromJson(registrosJson);
      print(reg);
    });
  }*/

  Future<ResponseFirebase> getRegisters() async {
    try {
      DatabaseReference _registros = instanceFirebase();
      DataSnapshot response = await _registros.get();
      final registers = ResponseFirebase.fromJson(response.value as List);
      print(response.value);
      return registers;
    } catch (e) {
      rethrow;
    }
  }
}
