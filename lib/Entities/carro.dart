class Carro {
  final String? Color;
  final String? marca;
  final int? modelo;
  final String? placa;

  Carro({this.Color, this.marca, this.modelo, this.placa});

  factory Carro.fromJson(Map<String, dynamic> json) {
    return Carro(
        Color: json['Color'],
        marca: json['marca'],
        modelo: json['modelo'],
        placa: json['placa']);
  }
}
