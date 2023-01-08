// To parse this JSON data, do
//
//     final member = memberFromJson(jsonString);

import 'dart:convert';

Member memberFromJson(String str) => Member.fromJson(json.decode(str));

String memberToJson(Member data) => json.encode(data.toJson());

class Member {
  Member({
    required this.name,
    required this.nik,
    this.address,
    this.phone,
    this.alias,
  });
  String name;
  String nik;
  String? address;
  String? phone;
  String? alias;

  factory Member.fromJson(Map<String, dynamic> json) => Member(
        name: json["name"],
        nik: json["nik"],
        address: json["address"],
        phone: json["phone"],
        alias: json["alias"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "nik": nik,
        "address": address,
        "phone": phone,
        "alias": alias,
      };
}
