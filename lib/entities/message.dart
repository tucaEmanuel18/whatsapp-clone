// enum State { 
//    pending, sent, received, readed
// }

class Message{
  DateTime time = DateTime.now();
  String content = "";
  bool myMessage = false;
  String state = "pending";

  Message.send(this.content){
    time = DateTime.now();
    myMessage = true;
    state = "readed";
  }
}

