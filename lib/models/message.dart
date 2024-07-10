import 'package:cloud_firestore/cloud_firestore.dart';

// Message model
class Message {
  final String senderID;
  final String senderEmail;
  final String receiverID;
  final String message;
  final Timestamp timestamp;
  final bool isRead;

  Message({
    required this.senderEmail,
    required this.senderID,
    required this.receiverID,
    required this.message,
    required this.timestamp,
    this.isRead = false,
  });

  // convert to a map
  Map<String, dynamic> toMap() {
    return {
      'senderID': senderID,
      'senderEmail': senderEmail,
      'receiverID': receiverID,
      'message': message,
      'timestamp': timestamp,
      'isRead': isRead,
    };
  }

  static Message fromMap(Map<String, dynamic> map) {
    return Message(
      senderID: map['senderID'],
      senderEmail: map['senderEmail'],
      receiverID: map['receiverID'],
      message: map['message'],
      timestamp: map['timestamp'],
      isRead: map['isRead'] ?? false,
    );
  }
}

// User model
class Users {
  String uid;
  String email;
  bool hasUnreadMessages;

  Users({
    required this.uid,
    required this.email,
    this.hasUnreadMessages = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'hasUnreadMessages': hasUnreadMessages,
    };
  }

  static Users fromMap(Map<String, dynamic> map) {
    return Users(
      uid: map['uid'],
      email: map['email'],
      hasUnreadMessages: map['hasUnreadMessages'] ?? false,
    );
  }
}
