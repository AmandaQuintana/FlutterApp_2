import 'package:flutter/material.dart';
import 'package:flutter_application_2/Entities/registros.dart';
import 'package:flutter_application_2/domain/firebase_connection.dart';

class CallFirebase extends StatefulWidget {
  const CallFirebase({Key? key}) : super(key: key);

  @override
  State<CallFirebase> createState() => CallFirebaseState();
}

class CallFirebaseState extends State<CallFirebase> {
  final conexion = FirebaseConnetion();

  void openAlertDialog(BuildContext context, info) {
    AlertDialog alert = AlertDialog(
      title: Text(info),
      content: Text(info),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context), child: const Text('Ok'))
      ],
    );
    showDialog(context: context, builder: (BuildContext context) => alert);
  }

  List<Registros> list_registers = [];

  @override
  Widget build(BuildContext context) {
    CallDatabase();
    return Scaffold(
      /*appBar: AppBar(
        title: const Text('Car Wash'),
      ),*/
      body: ListView.builder(
          itemCount: list_registers.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    Image.network(list_registers[index].image!).image,
              ),
              title: Text(list_registers[index].nombre!),
              onTap: () {
                openAlertDialog(context, list_registers[index].nombre);
              },
            );
          }),
    );
  }

  void CallDatabase() async {
    final respuesta = await conexion.getRegisters();
    if (list_registers.length == 0) {
      setState(() {
        list_registers = respuesta.registros!;
      });
    }
  }
}
