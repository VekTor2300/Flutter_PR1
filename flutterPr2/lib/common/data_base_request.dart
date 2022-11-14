abstract class DataBaseRequest{

  /// Таблица Роли
  ///
  ///
  static String deleteTable(String table) => 'DROP TABLE $table' ;
  /// Поля таблицы: Название роли
  static const String tableRole = 'Role';

  /// Таблица Пользователи
  ///
  /// Поля таблицы: Логин, Пароль, Роль
  static const String tableEmployee = 'Employee';
  static const String tablePost = 'Post';
  static const String tableProduct = 'Product';
  static const String tableTitleProduct = 'TitleProduct';
  static const String tableConsignment = 'Consignment';
  static const String tableSupplier = 'Supplier';
  static const String tableManufacturer = 'Manufacturer';
  static const String tableSalesJournal = 'SalesJournal';

  static const List<String> tableList = [ 
    tableRole,
    tableEmployee,
    tablePost,
    tableProduct,
    tableTitleProduct,
    tableConsignment,
    tableSupplier,
    tableManufacturer,
    tableSalesJournal];
  static const List<String> createTableList =[
    _createTableRole,
    _createTableEmployee,
    _createTablePost,
    _createTableProduct,
    _createTableTitleProduct,
    _createTableConsignment,
    _createTableSupplier,
    _createTableManufacturer,
    _createTableSalesJournal];

  /// Запрос для создания таблицы Role
  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER,"nameRole" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

        /// Запрос для создания таблицы Post
  static const String _createTablePost =
      'CREATE TABLE "$tablePost" ("id"	INTEGER,"postName" TEXT NOT NULL UNIQUE, "salary" INTEGER NOT NULL, PRIMARY KEY("id"))';

  /// Запрос для создания таблицы Employees
  static const String _createTableEmployee =
      'CREATE TABLE "$tableEmployee" ("id"	INTEGER, "surname"	TEXT NOT NULL, "name"	TEXT NOT NULL, "middleName"	TEXT NULL, "login"	TEXT NOT NULL UNIQUE, "password"	TEXT NOT NULL, "numberPhone"	TEXT NOT NULL, "id_post" INTEGER, "id_role"	INTEGER, FOREIGN KEY("id_post") REFERENCES "Post"("id"),  FOREIGN KEY("id_role") REFERENCES "Role"("id"), PRIMARY KEY("id"))';

  /// Запрос для создания таблицы Product
  static const String _createTableProduct =
      'CREATE TABLE "$tableProduct" ("id"	INTEGER, "quantityOnWarehouse" INTEGER NOT NULL, "images" TEXT NOT NULL UNIQUE, "codeForOrder" INTEGER NOT NULL UNIQUE, "id_consignment" INTEGER, "id_titleproduct" INTEGER, "id_manufacturer" INTEGER, FOREIGN KEY("id_consignment") REFERENCES "Consignment"("id"),  FOREIGN KEY("id_titleproduct") REFERENCES "TitleProduct"("id"), FOREIGN KEY("id_manufacturer") REFERENCES "Manufacturer"("id"), PRIMARY KEY("id"))';

  /// Запрос для создания таблицы ProductType
  static const String _createTableTitleProduct =
      'CREATE TABLE "$tableTitleProduct" ("id"	INTEGER,"title" TEXT NOT NULL UNIQUE, PRIMARY KEY("id"))';
      
  /// Запрос для создания таблицы Party
  static const String _createTableConsignment =
      'CREATE TABLE "$tableConsignment" ("id"	INTEGER, "date" TEXT NOT NULL, "wholesalePrice" INTEGER NOT NULL, "id_supplier" INTEGER, FOREIGN KEY("id_supplier") REFERENCES "Supplier"("id"), PRIMARY KEY("id"))';

  /// Запрос для создания таблицы Provider
  static const String _createTableSupplier =
      'CREATE TABLE "$tableSupplier" ("id"	INTEGER,"title" TEXT NOT NULL UNIQUE, "address" TEXT NOT NULL, "numberPhone" TEXT NOT NULL UNIQUE, "email" TEXT NOT NULL UNIQUE, PRIMARY KEY("id"))';

  /// Запрос для создания таблицы CurrentBalance
  static const String _createTableManufacturer =
      'CREATE TABLE "$tableManufacturer" ("id" INTEGER, "title" TEXT NOT NULL, PRIMARY KEY("id"))';

  /// Запрос для создания таблицы Stamp
  static const String _createTableSalesJournal =
      'CREATE TABLE "$tableSalesJournal" ("id"	INTEGER, "quantity" INTEGER NOT NULL, "discount" INTEGER NOT NULL, "amount" INTEGER NOT NULL, "retailPrice" INTEGER NOT NULL, "date" TEXT NOT NULL, "id_product" INTEGER, "id_employee" INTEGER, FOREIGN KEY("id_product") REFERENCES "Product"("id"), FOREIGN KEY("id_employee") REFERENCES "Employee"("id"), PRIMARY KEY("id"))';
}