class CNotification {
  final int id;
  final Map not_type;
  final String not_message, time, date;

  CNotification({
    required this.id,
    required this.not_type,
    required this.not_message,
    required this.time,
    required this.date,
  });
}

List<CNotification> notification_history = [
  CNotification(
    id: 1,
    not_type: {"type_name": "Deposit", "code_name": "deposit"},
    not_message:
        "You have successfully mad a deposit of UGX 430000.00 TO ACCOUNT 077******8, transaction ID64545454. Your new balance is UGX 4300000.00",
    time: "2:30 pm",
    date: "Jan/02/22",
  ),
  CNotification(
    id: 2,
    not_type: {"type_name": "Deposit", "code_name": "deposit"},
    not_message:
        "You have successfully mad a deposit of UGX 430000.00 TO ACCOUNT 077******8, transaction ID64545454. Your new balance is UGX 4300000.00",
    time: "2:30 pm",
    date: "Jan/02/22",
  ),
  CNotification(
    id: 3,
    not_type: {"type_name": "Deposit", "code_name": "deposit"},
    not_message:
        "You have successfully mad a deposit of UGX 430000.00 TO ACCOUNT 077******8, transaction ID64545454. Your new balance is UGX 4300000.00",
    time: "2:30 pm",
    date: "Jan/02/22",
  ),
  CNotification(
    id: 4,
    not_type: {"type_name": "Deposit", "code_name": "deposit"},
    not_message:
        "You have successfully mad a deposit of UGX 430000.00 TO ACCOUNT 077******8, transaction ID64545454. Your new balance is UGX 4300000.00",
    time: "2:30 pm",
    date: "Jan/02/22",
  ),
  CNotification(
    id: 5,
    not_type: {"type_name": "Deposit", "code_name": "deposit"},
    not_message:
        "You have successfully mad a deposit of UGX 430000.00 TO ACCOUNT 077******8, transaction ID64545454. Your new balance is UGX 4300000.00",
    time: "2:30 pm",
    date: "Jan/02/22",
  ),
  CNotification(
    id: 6,
    not_type: {"type_name": "Deposit", "code_name": "deposit"},
    not_message:
        "You have successfully mad a deposit of UGX 430000.00 TO ACCOUNT 077******8, transaction ID64545454. Your new balance is UGX 4300000.00",
    time: "2:30 pm",
    date: "Jan/02/22",
  ),
  CNotification(
    id: 7,
    not_type: {"type_name": "Deposit", "code_name": "deposit"},
    not_message:
        "You have successfully mad a deposit of UGX 430000.00 TO ACCOUNT 077******8, transaction ID64545454. Your new balance is UGX 4300000.00",
    time: "2:30 pm",
    date: "Jan/02/22",
  ),
  CNotification(
    id: 8,
    not_type: {"type_name": "Deposit", "code_name": "deposit"},
    not_message:
        "You have successfully mad a deposit of UGX 430000.00 TO ACCOUNT 077******8, transaction ID64545454. Your new balance is UGX 4300000.00",
    time: "2:30 pm",
    date: "Jan/02/22",
  ),
];
/////////////////////////////////
List<Map> notification_groups = [
  {
    "date_group": "Today",
    "group_codename": "today",
    "notifications": notification_history,
  },
  {
    "date_group": "December",
    "group_codename": "december",
    "notifications": notification_history,
  },
  {
    "date_group": "November",
    "group_codename": "november",
    "notifications": notification_history,
  },
  {
    "date_group": "October",
    "group_codename": "october",
    "notifications": notification_history,
  },
];
