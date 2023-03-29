import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_rendering/model/app_detail.dart';
import '../model/model.dart';
import '../model/service.dart';

class StudentDetailScreen extends StatelessWidget {
  const StudentDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: AppDetail.detailOfStudents.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(10),
          color: Color(0xffece9e8),
          child: ListTile(
            title: Text(
              AppDetail.detailOfStudents[index].name,
              style: TextStyle(
                  color: Color(0xffFF5200),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              AppDetail.detailOfStudents[index].place,
              style: TextStyle(
                  color: Color(0xfff67132),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              AppDetail.marklist = AppDetail.detailOfStudents[index].markslist;
              AppDetail.currentpageNotifier.value++;
            },
          ),
          shadowColor: Color(0xffFF5200),
          elevation: 10,
        );
      },
    );
  }
}