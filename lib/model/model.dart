import 'dart:convert';

ClassDetails classDetailsFromJson(String str) => ClassDetails.fromJson(json.decode(str));

class ClassDetails {
  ClassDetails({
    required this.items,
  });

  List<Item> items;

  factory ClassDetails.fromJson(Map<String, dynamic> json) => ClassDetails(
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
  );


}

class Item {
  Item({
    required this.nameOfTheClass,
    required this.numberOfStudents,
    required this.detailOfStudents,
  });

  String nameOfTheClass;
  String numberOfStudents;
  List<DetailOfStudent> detailOfStudents;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    nameOfTheClass: json["name of the class"],
    numberOfStudents: json["number of students"],
    detailOfStudents: List<DetailOfStudent>.from(json["detail of students"].map((x) => DetailOfStudent.fromJson(x))),
  );


}

class DetailOfStudent {
  DetailOfStudent({
    required this.name,
    required this.rollNumber,
    required this.place,
    required this.markslist,
  });

  String name;
  int rollNumber;
  String place;
  List<Markslist> markslist;

  factory DetailOfStudent.fromJson(Map<String, dynamic> json) => DetailOfStudent(
    name: json["name"],
    rollNumber: json["roll number"],
    place: json["place"]!,
    markslist: List<Markslist>.from(json["markslist"].map((x) => Markslist.fromJson(x))),
  );


}

class Markslist {
  Markslist({
    required this.subject,
    required this.mark,
  });

  String subject;
  dynamic mark;

  factory Markslist.fromJson(Map<String, dynamic> json) => Markslist(
    subject: json["subject"]!,
    mark: json["mark"],
  );


}
