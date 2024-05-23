import 'package:flutter/foundation.dart';

class SqlHelper {
  Database?db;

  SqlHelper(){
    initDb();
  }
  void createTables() async{ 
    await db!.execute("create table if not exists employees( id integer primary key,name text not null)");






  }
  void initDb() async {
    try {
      if(kIsWeb) {
      var factory = databaseFactoryFfiWeb; 
      db= await factory.openDatabase('sale.db');

    }else {

      db= await openDatabase (

        'sale.db',
        version :1,
        onCreat:(db, version) {
          print('===============Db created');
        },
      );
      
    } 
    }catch (e) { print('error in create db :${e}');
      
    } {

   
    }
    }
  }
