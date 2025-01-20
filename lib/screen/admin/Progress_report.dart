import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressReport extends StatelessWidget {
  const ProgressReport({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey),
              ),child: const Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Day',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                Text('Weeks',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                Text('Months',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
              ],
            ),
            ),const SizedBox(height: 20),
            Container(
              height: 300,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade400,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  width: 320,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Completed Task",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
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
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "11",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
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
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white),
                            ),
                            progressColor: Colors.blue.shade200,
                            backgroundColor: Colors.grey.shade50,
                          ),
                          const Column(
                            children: [
                              Text(
                                "Total Tasks",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "20",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              height: 50,
              width: 220,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.orange),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Go To Payment screen',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
