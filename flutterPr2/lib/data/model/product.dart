
import '../../domain/entity/product_entity.dart';

class Product extends ProductEntity{
  late int id;
  final int quantityOnWarehouse;
  final String images;
  final int codeForOrder;
  final int id_consignment;
  final int id_titleproduct;
  final int id_manufacturer;


   Product({
  required this.quantityOnWarehouse,
  required this.images,
  required this.codeForOrder,
  required this.id_consignment,
  required this.id_titleproduct,
  required this.id_manufacturer,
  }):super(
    quantityOnWarehouse: quantityOnWarehouse,
    images: images,
    codeForOrder: codeForOrder,
    id_consignment: id_consignment,
    id_titleproduct: id_titleproduct,
    id_manufacturer: id_manufacturer
  );

  Map<String, dynamic> toMap(){
    return{
      'quantityOnWarehouse': quantityOnWarehouse,
      'images': images,
      'codeForOrder': codeForOrder,
      'id_consignment': id_consignment,
      'id_titleproduct': id_titleproduct,
      'id_manufacturer': id_manufacturer
    };
  }

  factory Product.toFromMap(Map<String, dynamic> json){
      return Product(
        quantityOnWarehouse: json['quantityOnWarehouse'],
        images: json['images'],
        codeForOrder: json['codeForOrder'],
        id_consignment: json['id_consignment'],
        id_titleproduct: json['id_titleproduct'],
        id_manufacturer: json['id_manufacturer']);
    }
}