// // To parse this JSON data, do

import 'dart:convert';

List<UserData> userDataFromJson(dynamic str) => List<UserData>.from(
    (str as List<dynamic>).map((x) => UserData.fromJson(x)));

String userDataToJson(List<UserData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserData {
  UserData({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        userId: json["userId"] == null ? null : json["userId"],
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        body: json["body"] == null ? null : json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId == null ? null : userId,
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "body": body == null ? null : body,
      };
}


// //
// //     final userData = userDataFromJson(jsonString);

// import 'dart:convert';

// List<UserData> userDataFromJson(dynamic str) => List<UserData>.from(
//     (str as List<dynamic>).map((x) => UserData.fromJson(x)));

// String userDataToJson(List<UserData> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class UserData {
//   UserData({
//     this.name,
//     this.job,
//     this.id,
//     this.createdAt,
//   });

//   final String? name;
//   final String? job;
//   final int? id;
//   final DateTime? createdAt;

//   factory UserData.fromJson(Map<String, dynamic> json) => UserData(
//         name: json["title"] == null ? null : json["title"],
//         job: json["body"] == null ? null : json["body"],
//         id: json["id"] == null ? null : json["id"],
//         createdAt: json["userId"] == null
//             ? null
//             : DateTime.parse(json["createdAt"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "name": name == null ? null : name,
//         "job": job == null ? null : job,
//         "id": id == null ? null : id,
//         "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
//       };
// }
