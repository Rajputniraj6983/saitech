import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:saitech/screen/engineer/payment_screen.dart';

class EngineerStatusScreen extends StatelessWidget {
  const EngineerStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: InkWell(
          onTap: () {},
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 25,
          ),
        ),
        title: const Text(
          'Your Work Status',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
              color: Colors.blue,
            ),
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blue.shade400,
                  borderRadius: BorderRadius.circular(16),
                ),
                width: 350,
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Completed Task",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "9",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          children: [
                            Text(
                              "Incomplete Task",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600,color: Colors.white),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "11",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            ),
                          ],
                        ),
                        CircularPercentIndicator(
                          radius: 40,
                          lineWidth: 8.0,
                          percent: 0.45,
                          // 45%
                          center: const Text(
                            "45%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16,color: Colors.white),
                          ),
                          progressColor: Colors.blue.shade200,
                          backgroundColor: Colors.grey.shade50,
                        ),
                        const Column(
                          children: [
                            Text(
                              "Total Tasks",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600,color: Colors.white),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "20",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),SizedBox(height: 50),
          Container(
            height: 50,
            width: 220,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.orange),
            child: Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap:() {
                  Get.to(PaymentScreen(),
                      transition: Transition.leftToRight);
                },
                child: Text(
                  'Go To Payment screen',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
