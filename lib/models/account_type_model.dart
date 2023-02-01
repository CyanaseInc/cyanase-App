class AccountTypeModel {
  final String accountName, codename, description;
  bool isDefault;

  AccountTypeModel({
    required this.accountName,
    required this.codename,
    required this.description,
    required this.isDefault,
  });

  void forEach(bool Function(dynamic element) param0) {}
  ////////////////////

}

List<AccountTypeModel> accountTypes = [
  AccountTypeModel(
    accountName: "Basic Account (UGX)",
    codename: "basic_account",
    description:
        "Deposit and maintain your account in your local currency. (transaction charges apply)",
    isDefault: true,
  ),
  AccountTypeModel(
    accountName: "Dollar account (USD)",
    codename: "dollar_account",
    description:
        "Deposit in your local currency and we shall change it to USD (Standard charges apply)",
    isDefault: false,
  ),
];
