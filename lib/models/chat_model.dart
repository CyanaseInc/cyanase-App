class ChatModel {
  final String avatar;
  final bool hasNotifications;
  final int notification;
  ChatModel({
    required this.avatar,
    required this.hasNotifications,
    required this.notification,
  });
}

List<ChatModel> recent_chats = [
  ChatModel(
    avatar: "assets/images/profile2.png",
    hasNotifications: true,
    notification: 4,
  ),
  ChatModel(
    avatar: "assets/images/profile3.png",
    hasNotifications: true,
    notification: 1,
  ),
  ChatModel(
    avatar: "assets/images/profile2.png",
    hasNotifications: true,
    notification: 2,
  ),
  ChatModel(
    avatar: "assets/images/profile3.png",
    hasNotifications: true,
    notification: 1,
  ),
];
