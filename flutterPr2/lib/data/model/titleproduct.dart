import 'package:flutter_application_8/domain/entity/titleproduct_entity.dart';

class TitleProduct extends TitleProductEntity{
  late int id;
  final String title;
  TitleProduct({required this.title}): super(title: title);

  Map<String,dynamic> toMap(){
    return{
      'title': title,
    };
  }

  factory TitleProduct.toFromMap(Map<String, dynamic> json){
    return TitleProduct(title: json['title']);
  } 
}