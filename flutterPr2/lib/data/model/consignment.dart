import 'package:flutter_application_8/domain/entity/consignment_entity.dart';

class Consignment extends ConsignmentEntity{
  late int id;
  final String date;
  final int wholesalePrice;
  final int id_supplier;
  Consignment({
    required this.date,
    required this.wholesalePrice,
    required this.id_supplier
    }): super(
      date: date,
      wholesalePrice: wholesalePrice,
      id_supplier: id_supplier);

  Map<String,dynamic> toMap(){
    return{
      'date': date,
      'wholesalePrice': wholesalePrice,
      'id_supplier': id_supplier
    };
  }

  factory Consignment.toFromMap(Map<String, dynamic> json){
    return Consignment(
      date: json['date'],
      wholesalePrice: json['wholesalePrice'],
      id_supplier: json['id_supplier']
      );
  } 
}