import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saitech/screen/engineer/enignneer_statusscreen.dart';
import 'package:saitech/screen/engineer/payment_screen.dart';

class EngineerTaskScreen extends StatelessWidget {
  const EngineerTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Rahul Engg',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            Text(
              '12 tasks Today',
              style: const TextStyle(
                color: Color(0xffECA398),
                fontSize: 13,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 44,
                height: 44,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFFEBF0F6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: InkWell(onTap: () {
                  Get.to(const EngineerStatusScreen(),transition: Transition.leftToRight);
                },child: const Icon(Icons.admin_panel_settings)),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF3E0),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFFFA726), width: 1.5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.task_alt_rounded,
                        color: Colors.orange.shade700,
                        size: 28,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Pending Tasks',
                        style: TextStyle(
                          color: Colors.orange.shade800,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade700,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      '12 Pending',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ListView.builder(shrinkWrap: true,itemCount: 4,itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(onTap: () {
                Get.to(const PaymentScreen(),transition: Transition.leftToRight);
              },
                child: Container(
                  height: 80,
                  width: 390,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(),
                  ),
                ),
              ),
            ),

            )
          ],
        ),
      ),
      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     ElevatedButton.icon(
      //       style: ElevatedButton.styleFrom(
      //         backgroundColor: Colors.blue,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(12),
      //         ),
      //         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      //       ),
      //       onPressed: () {
      //         Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => SummaryScreen(),
      //             ));
      //       },
      //       icon: const Icon(Icons.bar_chart_rounded, color: Colors.white),
      //       label: const Text(
      //         'Summary',
      //         style: TextStyle(
      //           color: Colors.white,
      //           fontSize: 16,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

// class SummaryScreen extends StatelessWidget {
//   const SummaryScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Task Summary'),
//         backgroundColor: Colors.blue,
//       ),
//       body: const Center(
//         child: Text(
//           'Summary Details Here',
//           style: TextStyle(fontSize: 18),
//         ),
//       ),
//     );
//   }
// }
