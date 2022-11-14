// ignore_for_file: unused_local_variable

import 'dart:io';
import 'package:flutter_application_8/common/data_base_request.dart';
import 'package:flutter_application_8/data/model/manufacturer.dart';
import 'package:flutter_application_8/data/model/role.dart';
import 'package:flutter_application_8/data/model/consignment.dart';
import 'package:flutter_application_8/data/model/post.dart';
import 'package:flutter_application_8/data/model/product.dart';
import 'package:flutter_application_8/data/model/titleproduct.dart';
import 'package:flutter_application_8/data/model/supplier.dart';
import 'package:flutter_application_8/data/model/employee.dart';
import 'package:flutter_application_8/data/model/salesjournal.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DataBaseHelper{
  static final DataBaseHelper instance = DataBaseHelper._instance();
  DataBaseHelper._instance();
  late final Directory _appDocumentDirectory;
  late final String _pathDb;
  late final Database database;
  int _version = 1 ;

  Future<void> init() async{
    _appDocumentDirectory = 
        await path_provider.getApplicationDocumentsDirectory();
    _pathDb = join(_appDocumentDirectory.path, 'autopartstore.db');
    if(Platform.isWindows || Platform.isMacOS || Platform.isLinux){
       sqfliteFfiInit();
      Database dbase = await databaseFactoryFfi.openDatabase(_pathDb, options: OpenDatabaseOptions(
          onUpgrade: (db, oldVersion, newVersion) => onUpdateTable(db),
          version: _version,
          onCreate: (db, version) async {
            await onCreateTable(db);
          }
        )
      );
    }
    else{
      database = await openDatabase(
        _pathDb,
        version: _version,
        onUpgrade: ((db, oldVersion, newVersion) => onUpdateTable(db)),
        onCreate: (db, version) async {
          await onCreateTable(db);
        }
      );
    }
  }


  Future<void> onUpdateTable(Database db) async{
    var tables = await db.rawQuery('SELECT name FROM sqlite_master');
    for(var table in DataBaseRequest.tableList.reversed){
      if(tables.where((element) => element['name'] == table).isNotEmpty){
        await db.execute(DataBaseRequest.deleteTable(table));
      }
      
    }

    for (var element in DataBaseRequest.createTableList){
        await db.execute(element);
      }

      await onInitTable(db);

  }


  Future<void> onCreateTable(Database db) async{
      for (var element in DataBaseRequest.createTableList){
        await db.execute(element);
      }

      await onInitTable(db);
  }

  Future<void> onInitTable(Database db) async{
    try{
      db.insert(DataBaseRequest.tableRole,Role(nameRole: 'Администратор').toMap());
      db.insert(DataBaseRequest.tableRole,Role(nameRole: 'Грузчик').toMap());
      db.insert(DataBaseRequest.tableRole,Role(nameRole: 'Упаковщик').toMap());
      db.insert(DataBaseRequest.tableRole,Role(nameRole: 'Сортировщик').toMap());

      db.insert(DataBaseRequest.tablePost,Post(postName: 'Грузчик', salary: 25000).toMap());
      db.insert(DataBaseRequest.tablePost,Post(postName: 'Упаковщик', salary: 35000).toMap());
      db.insert(DataBaseRequest.tablePost,Post(postName: 'Сортировщик', salary: 35000).toMap());
      db.insert(DataBaseRequest.tablePost,Post(postName: 'Администратор', salary: 60000).toMap());

      db.insert(DataBaseRequest.tableTitleProduct,TitleProduct(title: 'Фильтр масляный ВАЗ-2105 АвтоВАЗ').toMap());
      db.insert(DataBaseRequest.tableTitleProduct,TitleProduct(title: 'КПП ВАЗ-2110-2112').toMap());
      db.insert(DataBaseRequest.tableTitleProduct,TitleProduct(title: 'Барабан тормозной ВАЗ-1118,2108,2110,2170,2190 АвтоВАЗ').toMap());
      db.insert(DataBaseRequest.tableTitleProduct,TitleProduct(title: 'Стартер ВАЗ-2108,2109,2113-2115 редукторный 1.44кВт STARTVOLT').toMap());

      db.insert(DataBaseRequest.tableSupplier,Supplier(title: 'Промышленно-Торговая Группа (ПТГ) "БИГ"', address: '087510, Сахалинская область, город Красногорск, въезд Ладыгина, 85', numberPhone: '8(953)176-74-97', email: 'rada.mihalchenko@outlook.com').toMap());
      db.insert(DataBaseRequest.tableSupplier,Supplier(title: 'LADA', address: '837254, Самарская область, город Егорьевск, проезд Ладыгина, 63', numberPhone: '8(945)585-63-12', email: 'olga1969@yandex.ru').toMap());
      db.insert(DataBaseRequest.tableSupplier,Supplier(title: 'STARTVOLT', address: '517308, Костромская область, город Луховицы, наб. Балканская, 40', numberPhone: '8(968)864-11-24', email: 'larisa.kryjova@yandex.ru').toMap());

      db.insert(DataBaseRequest.tableSalesJournal,salesJournal(quantity: 100, discount: 15, amount: 7600, retailPrice: 10000, date: '23-08-2022', id_product: 1, id_employee: 1).toMap());
      db.insert(DataBaseRequest.tableSalesJournal,salesJournal(quantity: 100, discount: 15, amount: 7600, retailPrice: 10000, date: '23-08-2022', id_product: 2, id_employee: 1).toMap());
      db.insert(DataBaseRequest.tableSalesJournal,salesJournal(quantity: 100, discount: 15, amount: 7600, retailPrice: 10000, date: '23-08-2022', id_product: 3, id_employee: 1).toMap());
      db.insert(DataBaseRequest.tableSalesJournal,salesJournal(quantity: 100, discount: 15, amount: 7600, retailPrice: 10000, date: '23-08-2022', id_product: 4, id_employee: 1).toMap());

      db.insert(DataBaseRequest.tableConsignment,Consignment(date: '26-09-2022', wholesalePrice: 200000, id_supplier: 1).toMap());
      db.insert(DataBaseRequest.tableConsignment,Consignment(date: '13-10-2022', wholesalePrice: 150000, id_supplier: 2).toMap());
      db.insert(DataBaseRequest.tableConsignment,Consignment(date: '02-09-2022', wholesalePrice: 150000, id_supplier: 3).toMap());

      db.insert(DataBaseRequest.tableEmployee,Employee(login: 'admin', password: '54321admin', surname: 'Плеханов', name: 'Михаил', middleName: 'Алексеевич', numberPhone: '8(966)317-11-12', id_role: 1, id_post: 4).toMap());

      db.insert(DataBaseRequest.tableProduct,Product(quantityOnWarehouse: 154, images: 'https://www.avtoall.ru/product_pictures/big/ec2/004374.jpg', codeForOrder: 942833,id_consignment: 1, id_titleproduct: 1, id_manufacturer: 1).toMap());
      db.insert(DataBaseRequest.tableProduct,Product(quantityOnWarehouse: 125, images: 'https://www.avtoall.ru/product_pictures/big/b82/129596.jpg', codeForOrder: 543233,id_consignment: 2, id_titleproduct: 2, id_manufacturer: 2).toMap());
      db.insert(DataBaseRequest.tableProduct,Product(quantityOnWarehouse: 150, images: 'https://www.avtoall.ru/product_pictures/big/962/075996.jpg', codeForOrder: 725644,id_consignment: 2, id_titleproduct: 3, id_manufacturer: 2).toMap());
      db.insert(DataBaseRequest.tableProduct,Product(quantityOnWarehouse: 100, images: 'https://www.avtoall.ru/product_pictures/big/f1b/553596.jpg', codeForOrder: 234546,id_consignment: 3, id_titleproduct: 4, id_manufacturer: 3).toMap());

      db.insert(DataBaseRequest.tableManufacturer,Manufacturer(title: 'БИГ').toMap());
      db.insert(DataBaseRequest.tableManufacturer,Manufacturer(title: 'LADA').toMap());
      db.insert(DataBaseRequest.tableManufacturer,Manufacturer(title: 'STARTVOLT').toMap());




    }
    on DatabaseException catch(e){}
  }
  

  Future<void> onDropTable() async {
    database.close();
    deleteDatabase(_pathDb);
  }

}