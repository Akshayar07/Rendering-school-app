import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_rendering/model/app_detail.dart';


class MarkDetailScreen extends StatelessWidget {
  const MarkDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: AppDetail.marklist.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(10),
          color: Color(0xffece9e8),
          child: ListTile(
            title: Text(
              AppDetail.marklist[index].subject,
              style: TextStyle(
                  color: Color(0xffFF5200),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              AppDetail.marklist[index].mark.toString(),
              style: TextStyle(
                  color: Color(0xfff67132),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          shadowColor: Color(0xffFF5200),
          elevation: 10,
        );
      },
    );
  }
}
