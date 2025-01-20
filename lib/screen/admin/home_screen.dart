import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saitech/modal/master_list.dart';
import 'package:saitech/screen/admin/Progress_report.dart';
import 'package:saitech/screen/admin/addcall_screen.dart';
import 'package:saitech/screen/admin/amc_screen.dart';
import 'package:saitech/screen/admin/client_screen.dart';
import 'package:saitech/screen/admin/engineer_report_screen.dart';
import 'package:saitech/screen/customer/google_feedback.dart';
import 'package:saitech/screen/admin/replacement.dart';
import 'package:saitech/screen/admin/engineer_screen.dart';
import 'package:saitech/screen/engineer/payment_screen.dart';
import 'package:saitech/screen/admin/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> screens = [
    const ClientScreen(),
    const EngineerScreen(),
    const Replacement(),
    const AddcallScreen(),
    const AmcScreen(),
    const PaymentScreen(),
    const EngineerReportScreen(),
    const FeedbackScreen(),
    const ProgressReport(),
  ];

  final List<Map<String, dynamic>> bottomNavItems = [
    {'icon': Icons.home, 'label': 'Home'},
    {'icon': Icons.call, 'label': 'Call'},
    {'icon': Icons.person, 'label': 'Profile'},
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, size: 27, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: const Text(
          'Homescreen',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(const ProfileScreen());
            },
            icon: const Icon(Icons.person, size: 28, color: Colors.white),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/saitech_logo_niraj.png'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Shree Sai Computer World',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
             ListTile(
        leading: const CircleAvatar(radius: 20,backgroundImage: AssetImage('assets/images/client.jpeg'),),
        title: const Text('Add Client',style: TextStyle(fontSize: 18),),
        onTap: () {
          Get.to(const ClientScreen());
        },
      ),const SizedBox(height: 5),
             ListTile(
        leading: const CircleAvatar(radius: 20,backgroundImage: AssetImage('assets/images/engineer.png'),),
        title: const Text('Add Engineer',style: TextStyle(fontSize: 18),),
        onTap: () {
          Get.to(const EngineerScreen());
        },
      ),const SizedBox(height: 5),
             ListTile(
        leading: const CircleAvatar(radius: 20,backgroundImage: AssetImage('assets/images/replacement.png'),),
        title: const Text('Replacement',style: TextStyle(fontSize: 18),),
        onTap: () {
          Get.to(const Replacement());
        },
      ),const SizedBox(height: 5),
             ListTile(
        leading: const CircleAvatar(radius: 20,backgroundImage: AssetImage('assets/images/call.png'),),
        title: const Text('Add Call',style: TextStyle(fontSize: 18),),
        onTap: () {
          Get.to(const AddcallScreen());
        },
      ),const SizedBox(height: 5),
             ListTile(
        leading: const CircleAvatar(radius: 20,backgroundImage: AssetImage('assets/images/amc.png'),),
        title: const Text('Amc',style: TextStyle(fontSize: 18),),
        onTap: () {
          Get.to(const AmcScreen());
        },
      ),const SizedBox(height: 5),
             ListTile(
        leading: const CircleAvatar(radius: 20,backgroundImage: AssetImage('assets/images/payment.png'),),
        title: const Text('Payment',style: TextStyle(fontSize: 18),),
        onTap: () {
          Get.to(const PaymentScreen());
        },
      ),const SizedBox(height: 5),
             ListTile(
        leading: const CircleAvatar(radius: 20,backgroundImage: AssetImage('assets/images/attendance report.png'),),
        title: const Text('Engineer Report',style: TextStyle(fontSize: 18),),
        onTap: () {
          Get.to(const EngineerReportScreen());
        },
      ),const SizedBox(height: 5),
             ListTile(
        leading: const CircleAvatar(radius: 20,backgroundImage: AssetImage('assets/images/Department.png'),),
        title: const Text('Manager',style: TextStyle(fontSize: 18),),
        onTap: () {
          Get.to(const ProgressReport());
        },
      ),const SizedBox(height: 5),
             ListTile(
              leading: CircleAvatar(radius: 20,backgroundImage: AssetImage('assets/images/Engineer Report.png'),),
        title: Text('Engineer Status',style: TextStyle(fontSize: 18),),
          )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              GridView.builder(
                itemCount: Master.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(
                    onTap: () {
                      Get.to(screens[index]);
                    },
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(Master[index]['Img']),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              Master[index]['master'],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

          if (index == 0) {
            Get.to(() => const HomeScreen());
          } else if (index == 1) {
            Get.to(() => const AddcallScreen());
          } else if (index == 2) {
            Get.to(() => const ProfileScreen());
          }
        },
        items: bottomNavItems
            .map(
              (item) => BottomNavigationBarItem(
            icon: Icon(item['icon']),
            label: item['label'],
          ),
        )
            .toList(),
      ),
    );
  }
}
