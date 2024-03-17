import 'package:flutter/material.dart';
import 'package:travel_app/database.dart';
import 'package:sqflite/sqflite.dart';
// import 'home_page.dart';
// import 'bookScreen.dart';
import 'loginScreen.dart';
import 'history.dart';
import 'paymentScreen.dart';
import 'database.dart';
import 'package:path/path.dart' as p;
import 'destinationDetail.dart';

void main() async {
  runApp(const MainApp());
  database = openDatabase(
    p.join(await getDatabasesPath(), "bookingDataDB.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute('''CREATE TABLE BookingDetail (
            id INTEGER PRIMARY KEY, 
            name STRING,
            date STRING,
            cardnumber INTEGER,
            cardexpirydate STRING,
            cardCvv INTEGER,
            totalAmount REAL,
            locationName STRING)''');
    },
  );
  paymentdatastore = await getpaymentdata();
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Payment(),
    );
  }
}
int inde = 0;
int totalseat = 0;
