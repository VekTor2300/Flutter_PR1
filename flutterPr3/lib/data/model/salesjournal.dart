import 'package:flutter/cupertino.dart';
import 'package:flutter_application_8/domain/entity/salesjournal_entity.dart';

class salesJournal extends SalesJournalEntity{
  late int id;
  final int quantity;
  final int discount;
  final int amount;
  final int retailPrice;
  final String date;
  final int id_product;
  final int id_employee;

  salesJournal({
  required this.quantity,
  required this.discount,
  required this.amount,
  required this.retailPrice,
  required this.date,
  required this.id_product,
  required this.id_employee,
    }): super(
      quantity: quantity,
      discount: discount,
      amount: amount,
      retailPrice: retailPrice,
      date: date,
      id_product: id_product,
      id_employee: id_employee);

  Map<String,dynamic> toMap(){
    return{
      'quantity': quantity,
      'discount': discount,
      'amount': amount,
      'retailPrice': retailPrice,
      'date': date,
      'id_product': id_product,
      'id_employee': id_employee
    };
  }

  factory salesJournal.toFromMap(Map<String, dynamic> json){
    return salesJournal(
      quantity: json['quantity'],
      discount: json['discount'],
      amount: json['amount'],
      retailPrice: json['retailPrice'],
      date: json['date'],
      id_product: json['id_product'],
      id_employee: json['id_employee'],
      );
  } 
}