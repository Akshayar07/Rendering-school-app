import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_rendering/model/app_detail.dart';
import 'package:school_rendering/screen/class_details_screen.dart';
import 'package:school_rendering/screen/home_screen.dart';
import 'package:school_rendering/screen/mark_details_screen.dart';
import 'package:school_rendering/screen/login_screen.dart';
import 'package:school_rendering/screen/student_details_screen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    print('build called');
    return MaterialApp(
      home: Scaffold(
          body: ValueListenableBuilder(
              valueListenable: AppDetail.currentpageNotifier,
              builder: (BuildContext context, int currentpage, _) {
                print(currentpage);
                print('value called');
                return getWidget(currentpage);
              })),
    );
  }

  Widget getWidget(int pageNumber) {
    switch (pageNumber) {
      case 0:
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginScreen(),
            ],
          ),
        );
        break;
      case 1:
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffFF5200),
            title: Text('Future School'),
            leading: IconButton(
                onPressed: () {}, icon: Icon(CupertinoIcons.line_horizontal_3)),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_active_outlined))
            ],
          ),
          body: HomeScreen()
        );
        break;
      case 2:
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffFF5200),
            leading: IconButton(
              onPressed: () {
                setState(() {
                  AppDetail.currentpageNotifier.value--;
                });
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
            title: const Text('Class List'),
            centerTitle: true,
          ),
          body: Column(
            children: [
              ClassDetailScreen(),
            ],
          ),
        );
        break;
      case 3:
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xffFF5200),
              leading: IconButton(
                onPressed: () {
                  setState(() {
                    AppDetail.currentpageNotifier.value--;
                  });
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
              title: const Text('Student Details'),
              centerTitle: true,
            ),
            body: StudentDetailScreen());
        break;
      case 4:
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xffFF5200),
              leading: IconButton(
                onPressed: () {
                  setState(() {
                    AppDetail.currentpageNotifier.value--;
                  });
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
              title: const Text('Mark List'),
              centerTitle: true,
            ),
            body: MarkDetailScreen());
        break;
    }
    return const CircularProgressIndicator();
  }
}
