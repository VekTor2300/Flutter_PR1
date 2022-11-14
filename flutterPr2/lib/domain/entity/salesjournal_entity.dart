class SalesJournalEntity{
  late int id;
  final int quantity;
  final int discount;
  final int amount;
  final int retailPrice;
  final String date;
  final int id_product;
  final int id_employee;


SalesJournalEntity({
  required this.quantity,
  required this.discount,
  required this.amount,
  required this.retailPrice,
  required this.date,
  required this.id_product,
  required this.id_employee,
  });
}