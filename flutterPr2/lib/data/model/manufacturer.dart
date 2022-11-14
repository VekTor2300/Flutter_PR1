import '../../domain/entity/manufacturer_entity.dart';

class Manufacturer extends ManufacturerEntity{
  late int id;
  final String title;
  Manufacturer({
  required this.title
    }): super(
      title: title);

  Map<String,dynamic> toMap(){
    return{
      'title': title
    };
  }

  factory Manufacturer.toFromMap(Map<String, dynamic> json){
    return Manufacturer(
      title: json['title']);
  } 
}