import 'package:flutter/material.dart';
import 'package:travel_app/database.dart';
import 'package:sqflite/sqflite.dart';
// import 'package:travel_app/paymentScreen.dart';

import 'loginScreen.dart';

import 'package:path/path.dart' as p;

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
      home: LoginPage(),
    );
  }
}

int inde = 0;
int totalseat = 0;

bool homeScreenn = false;
bool bookScreenn = false;
bool paymentScreenn = false;
bool paymentSuccessfuln = false;
bool histryScreenn = false;
bool loginScreen = true;
