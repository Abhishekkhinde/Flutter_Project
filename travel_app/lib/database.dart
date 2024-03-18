import 'package:sqflite/sqflite.dart';

class PaymentData {
  int? id;
  String? name;
  String? date;
  int? cardnumber;
  String? cardexpirydate;
  int? cardCvv;
  double? totalAmount;
  String? locationName;

  PaymentData(
      {this.id,
      required this.name,
      required this.date,
      required this.cardnumber,
      required this.cardexpirydate,
      required this.cardCvv,
      required this.totalAmount,
      required this.locationName});

  Map<String, dynamic> paymentDataMap() {
    return {
      'id': id,
      'name': name,
      'date': date,
      'cardnumber': cardnumber,
      'cardexpirydate': cardexpirydate,
      'cardCvv': cardCvv,
      'totalAmount': totalAmount,
      'locationName': locationName,
    };
  }

  @override
  String toString() {
    return "{id:$id,name:$name,date: $date,cardnumber: $cardnumber,cardexpirydate: $cardexpirydate,cardCvv: $cardCvv,totalAmount: $totalAmount,locationName: $locationName}";
  }
}

dynamic database;

Future insertPyamentData(PaymentData obj) async {
  final localDb = await database;

  await localDb.insert(
    "BookingDetail",
    obj.paymentDataMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
  paymentdatastore = await getpaymentdata();
}

Future<List<PaymentData>> getpaymentdata() async {
  final localDB = await database;

  List<Map<String, dynamic>> listPaymentData =
      await localDB.query("BookingDetail");

  return List.generate(listPaymentData.length, (index) {
    return PaymentData(
      id: listPaymentData[index]['id'],
      name: listPaymentData[index]['name'],
      date: listPaymentData[index]['date'],
      cardnumber: listPaymentData[index]['cardnumber'],
      cardexpirydate: listPaymentData[index]['cardexpirydate'],
      cardCvv: listPaymentData[index]['cardCvv'],
      totalAmount: listPaymentData[index]['totalAmount'],
      locationName: listPaymentData[index]['locationName'],
    );
  });
}

Future<void> detelelist(PaymentData obj) async {
  final localDB = await database;

  await localDB.delete('BookingDetail', where: 'id = ?', whereArgs: [obj.id]);
  paymentdatastore = await getpaymentdata();
  print(await getpaymentdata());
}

Future<void> updatelist(PaymentData obj) async {
  final localDB = await database;

  await localDB.update(
    'Tasklist',
    obj.paymentDataMap(),
    where: 'id = ?',
    whereArgs: [obj.id],
  );
  paymentdatastore = await getpaymentdata();
  print(await getpaymentdata());
}

List<PaymentData> paymentdatastore = [];
