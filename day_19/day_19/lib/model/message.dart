import 'package:day_19/model/user.dart';

class Message {
  User user;
  String lastMessage;
  String lastTime;
  bool isContinue;
  Message(this.user, this.lastMessage, this.lastTime,
      {this.isContinue = false});
  static List<Message> generatedHomePageMessage() {
    return [
      Message(users[0], "How are you bro?,I am Fine", "11:35pm"),
      Message(users[1], "How are you bro?,I am Fine", "11:35pm"),
      Message(users[2], "How are you bro?,I am Fine", "11:35pm"),
      Message(users[3], "How are you bro?,I am Fine", "11:35pm"),
      Message(users[4], "How are you bro?,I am Fine", "11:35pm"),
      Message(users[5], "How are you bro?,I am Fine", "11:35pm"),
      Message(users[6], "How are you bro?,I am Fine", "11:35pm"),
      Message(users[7], "How are you bro?,I am Fine", "11:35pm"),
    ];
  }
}

var users = User.generatedUser();
