import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/app/data/models/task.dart';
import 'package:todoapp/app/modules/home/widgets/add_card.dart';
import 'package:todoapp/app/modules/home/widgets/task_card.dart';
import '../controllers/home_controller.dart';
import '../../../../app/core/utils/extensions.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(4.0.wp),
              child: Text(
                'My List',
                style: GoogleFonts.poppins(
                  fontSize: 24.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: [
                TaskCard(
                  task: const Task(
                      title: 'title', icon: 0xE59C, color: '#FF2B60E6'),
                ),
                AddCard(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
