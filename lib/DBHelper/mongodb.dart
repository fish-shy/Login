import 'dart:developer';

import 'package:lowgin/DBHelper/constant.dart';
import 'package:mongo_dart/mongo_dart.dart';

class MongoDatabase{
  static var db, userCollection;
  static connect() async{
    db = await Db.create(MONGO_CONN_UTL);
    await db.open();
    inspect(db);
    userCollection = db.collection(USER_COLLECTION);
  }
}