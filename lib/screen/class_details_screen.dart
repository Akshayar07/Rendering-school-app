import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_rendering/model/app_detail.dart';
import '../model/model.dart';
import '../model/service.dart';

class ClassDetailScreen extends StatelessWidget {
  const ClassDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FutureBuilder(
            future: service().readJsonData(),
            builder:
                (BuildContext context, AsyncSnapshot<ClassDetails> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }
              if (snapshot.hasData) {
                final schoolDetails = snapshot.requireData;
                return ListView.builder(
                  itemCount: schoolDetails.items.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(10),
                      color: Color(0xffece9e8),
                      child: ListTile(
                        title: Text(
                          schoolDetails.items[index].nameOfTheClass,
                          style: TextStyle(
                              color: Color(0xffFF5200),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          schoolDetails.items[index].numberOfStudents,
                          style: TextStyle(
                              color: Color(0xffd0774e),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          AppDetail.detailOfStudents =
                              schoolDetails.items[index].detailOfStudents;
                          AppDetail.currentpageNotifier.value++;
                        },
                      ),
                      shadowColor: Color(0xffFF5200),
                      elevation: 10,
                    );
                  },
                );
              }
              return CircularProgressIndicator();
            }));
  }
}