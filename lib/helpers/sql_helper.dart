
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

class SqlHelper {
  Database? db;
}

  
  Future<void> createTables() async{ 
    await db!.execute("create table if not exists employees( id integer primary key,name text not null)");
    print('create employees table');




  }
  Future<void> initDb() async {
    try {
      if(kIsWeb) {
      var factory = databaseFactoryFfiWeb; 
      db = await factory.openDatabase('sale.db');
      print('Db created');
    }else {

      db= await openDatabase (
        'sale.db',
        version :1,
        onCreat:(db, version) {
          print('===============Db created');
        },
      ); 
    } 
    } catch (e) { print('error in create db :${e}');
      
    } {

   
    }
    }
  
