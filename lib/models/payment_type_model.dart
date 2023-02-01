class PaymentTypeModel {
  final String paymentTypeName, codename, paymentLogo;
  bool isDefault;

  PaymentTypeModel({
    required this.paymentTypeName,
    required this.codename,
    required this.paymentLogo,
    required this.isDefault,
  });
}

List<PaymentTypeModel> paymentTypes = [
  PaymentTypeModel(
    paymentTypeName: "FlutterWave",
    codename: "flutterwave",
    paymentLogo: "assets/images/flutterwave.png",
    isDefault: true,
  ),
  PaymentTypeModel(
    paymentTypeName: "Airtel Money",
    codename: "airtel_money",
    paymentLogo: "assets/images/airtel.png",
    isDefault: true,
  ),
  PaymentTypeModel(
    paymentTypeName: "MTN Mobile Money",
    codename: "mtn_mobile_money",
    paymentLogo: "assets/images/mtn_momo.png",
    isDefault: true,
  ),
];
