class ProductEntity{
  late int id;
  final int quantityOnWarehouse;  
  final String images;
  final int codeForOrder;
  final int id_consignment;
  final int id_titleproduct;
  final int id_manufacturer;

 ProductEntity({
  required this.quantityOnWarehouse,
  required this.images,
  required this.codeForOrder,
  required this.id_consignment,
  required this.id_titleproduct,
  required this.id_manufacturer,
  });
}