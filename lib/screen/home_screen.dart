import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/app_detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Image(
          image: AssetImage('assets/student.jpg'),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(
              icon: const Icon(
                Icons.people_outline_rounded,
                size: 50,
                color: Colors.white,
              ),
              onPressed: () {
                AppDetail.currentpageNotifier.value++;
              },
              label: Text(
                "Class",
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffFF5200),
                fixedSize: const Size(150, 83),
              ),
            ),
            ElevatedButton.icon(
              icon: const Icon(
                Icons.local_activity,
                size: 50,
                color: Colors.white,
              ),
              onPressed: () {},
              label: Text(
                "Activity",
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffFF5200),
                fixedSize: const Size(150, 83),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(
              icon: const Icon(
                Icons.event,
                size: 50,
                color: Colors.white,
              ),
              onPressed: () {},
              label: Text(
                "Events",
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffFF5200),
                fixedSize: const Size(150, 83),
              ),
            ),
            ElevatedButton.icon(
              icon: const Icon(
                Icons.calendar_month_outlined,
                size: 50,
                color: Colors.white,
              ),
              onPressed: () {},
              label: Text(
                "Time Table",
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffFF5200),
                fixedSize: const Size(150, 83),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
