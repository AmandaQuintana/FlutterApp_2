import 'package:flutter_application_2/Entities/registros.dart';

class ResponseFirebase {
  List<Registros>? registros;

  ResponseFirebase({this.registros});

  ResponseFirebase.fromJson(List<dynamic> json) {
    /*if (json['Registros'] != null) {
      registros = <Registros>[];
      json['Registros'].forEach((v) => {registros!.add(Registros.fromJson(v))});
    }*/

    registros = json.map((e) => Registros.fromJson(e)).toList();
  }
}
