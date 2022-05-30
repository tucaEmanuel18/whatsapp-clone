import 'package:flutter/foundation.dart';

import '../data/data.dart';

class MessagesProvider with ChangeNotifier{
    List<Map<String, Object>> _messageList = messages;
    List<Map<String, Object>> get messageList => _messageList;

    MessagesProvider(List<Map<String, Object>>? contactMessages){
      _messageList = contactMessages ?? messages;
    }

    void add(String newValue){
      _messageList.add({
                "my_message": true,
                "content": newValue,
                "time": DateTime.now().hour.toString() + ":" + DateTime.now().minute.toString(),
                "state": "readed"
        });
      notifyListeners();
    }
}
