import 'dart:async';

import 'package:flutter/cupertino.dart';

class MainApplicationBloc with ChangeNotifier {
  // Stream controller:::
  StreamController<Map> uiCommunication = StreamController.broadcast();
  // Function to send UI Message::
  void sendMessage(Map message) {
    uiCommunication.add(message);
    notifyListeners();
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    uiCommunication.done;
    super.dispose();
  }
}
