import 'package:flutter_application_8/domain/entity/supplier_entity.dart';

class Supplier extends SupplierEntity{
  late int id;
  final String title;
  final String address;
  final String numberPhone;
  final String email;
  Supplier({
  required this.title,
  required this.address,
  required this.numberPhone,
  required this.email,
    }): super(
      title: title,
      address: address,
      numberPhone: numberPhone,
      email: email
      );

  Map<String,dynamic> toMap(){
    return{
      'title': title,
      'address': address,
      'numberPhone': numberPhone,
      'email': email
    };
  }

  factory Supplier.toFromMap(Map<String, dynamic> json){
    return Supplier(
      title: json['title'],
      address: json['address'],
      numberPhone: json['numberPhone'],
      email: json['email']
      );
  } 
}