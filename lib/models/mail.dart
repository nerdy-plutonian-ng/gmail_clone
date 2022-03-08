// To parse this JSON data, do
//
//     final mail = mailFromJson(jsonString);

import 'dart:convert';

class Mail {
  const Mail({
    required this.id,
    required this.sender,
    required this.subject,
    required this.message,
    required this.date,
    required this.starred,
    required this.attachment,
    required this.promo,
  });

  final String id;
  final String sender;
  final String subject;
  final String message;
  final DateTime date;
  final bool starred;
  final bool attachment;
  final bool promo;

  factory Mail.fromJson(Map<String, dynamic> json) => Mail(
    id: json["id"],
    sender: json["sender"],
    subject: json["subject"],
    message: json["message"],
    date: DateTime.parse(json["date"]),
    starred: json["starred"],
    attachment: json["attachment"],
    promo: json["promo"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "sender": sender,
    "subject": subject,
    "message": message,
    "date": date.toIso8601String(),
    "starred": starred,
    "attachment": attachment,
    "promo": promo,
  };

  static Mail mailFromJson(String str) => Mail.fromJson(json.decode(str));

  static String mailToJson(Mail data) => json.encode(data.toJson());

}