class DepositTypeModel {
  final String labelText, desc;
  bool isChecked;
  DepositTypeModel({
    required this.desc,
    required this.labelText,
    required this.isChecked,
  });
}

List<DepositTypeModel> deposittypes = [
  DepositTypeModel(
    labelText: "Auto deposit for goal",
    desc:
        "Make your deposits automatic such that you do not miss out a single day",
    isChecked: true,
  ),
  DepositTypeModel(
    labelText: "Manually invest",
    desc: "Let me make deposits myself",
    isChecked: false,
  ),
];
