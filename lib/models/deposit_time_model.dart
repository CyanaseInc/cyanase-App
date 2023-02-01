class DepositTimeModel {
  final String labelText, desc;
  bool isChecked;
  DepositTimeModel({
    required this.desc,
    required this.labelText,
    required this.isChecked,
  });
}

List<DepositTimeModel> deposittimes = [
  DepositTimeModel(
    labelText: "Weekly",
    desc: "Make weekly deposits to achieve this goal",
    isChecked: true,
  ),
  DepositTimeModel(
    labelText: "Monthly",
    desc: "Make monthly deposits to achieve this goal",
    isChecked: false,
  ),
];
