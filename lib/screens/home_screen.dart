// ignore_for_file: prefer_const_constructors

import 'package:agro_learning/widgets/job_car.dart';
import 'package:agro_learning/widgets/recent_job_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List jobs = [
    ["Test", "Test", Icons.abc, 45],
    ["Test", "Test", Icons.h_mobiledata_rounded, 45],
    ["Test", "Test", Icons.javascript, 45],
    ["Test", "Test", Icons.radar, 45],
  ];

  final List recentJobs = [
    ["Test", "Test", Icons.abc, 05],
    ["Test", "Test", Icons.h_mobiledata_rounded, 48],
    ["Test", "Test", Icons.javascript, 62],
    ["Test", "Test", Icons.radar, 45],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            //app bar
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                height: 50,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Icon(
                  Icons.menu,
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            //discover
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Decouvrez les nouveautés",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            //search
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Rechercher ...",
                    icon: Icon(
                      Icons.search,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            //for you
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              height: 120,
              child: Expanded(
                child: ListView.builder(
                  itemCount: jobs.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return JobCard(
                      companyName: jobs[index][0],
                      jobTitle: jobs[index][1],
                      logoImagePath: jobs[index][2],
                      hourlyRate: jobs[index][3],
                    );
                  },
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            //recently add
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Recement ajouté",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView.builder(
                    itemCount: recentJobs.length,
                    itemBuilder: (context, index) {
                      return RecentJobCard(
                        companyName: recentJobs[index][0],
                        jobTitle: recentJobs[index][1],
                        logoImagePath: recentJobs[index][2],
                        hourlyRate: recentJobs[index][3],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
