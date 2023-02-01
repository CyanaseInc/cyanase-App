class TransactionModel {
  final String trxtype, status, date, time, activitytype;
  final double trxamount;

  TransactionModel({
    required this.activitytype,
    required this.trxtype,
    required this.status,
    required this.date,
    required this.time,
    required this.trxamount,
  });
}

List<TransactionModel> transaction_activity = [
  TransactionModel(
    trxtype: "Desposit",
    status: "successful",
    date: "Yesterday",
    time: "02:00hrs",
    trxamount: 430000.00,
    activitytype: "wallet",
  ),
  TransactionModel(
    trxtype: "Desposit",
    status: "Network Error",
    date: "Yesterday",
    time: "02:00hrs",
    trxamount: 430000.00,
    activitytype: "wallet",
  ),
  TransactionModel(
    trxtype: "Desposit",
    status: "unsuccessful",
    date: "Yesterday",
    time: "02:00hrs",
    trxamount: 21000.00,
    activitytype: "wallet",
  ),
  TransactionModel(
    trxtype: "Desposit",
    status: "unsuccessful",
    date: "Yesterday",
    time: "02:00hrs",
    trxamount: 20000.00,
    activitytype: "wallet",
  ),
];
